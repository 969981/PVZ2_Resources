// @category PVZ2.Offline
// Read-only, source-version-specific native argument-use evidence. No code body export.
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.lang.Register;
import ghidra.program.model.pcode.HighFunction;
import ghidra.program.model.pcode.PcodeOpAST;
import ghidra.program.model.pcode.Varnode;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.io.BufferedWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class PvZ2JniSemantics extends GhidraScript {
    private String csv(String v) {
        if (v == null) return "";
        return "\"" + v.replace("\"", "\"\"") + "\"";
    }

    private Address resolveCodeAddress(long rva) {
        Address raw=toAddr(rva);
        Address shifted=toAddr(currentProgram.getImageBase().getOffset()+rva);
        if (getInstructionAt(raw)!=null) return raw;
        if (getInstructionAt(shifted)!=null) return shifted;
        if (currentProgram.getMemory().contains(raw)) return raw;
        return shifted;
    }

    private String[] firstArgumentTouches(Function f) {
        String status="", playerPtr="", handle="";
        Instruction inst = getInstructionAt(f.getEntryPoint());
        int visited=0;
        while(inst!=null && f.getBody().contains(inst.getAddress()) && visited<160) {
            for (Object obj: inst.getInputObjects()) {
                if (!(obj instanceof Register)) continue;
                String reg=((Register)obj).getName().toLowerCase();
                String target=inst.getAddress().toString()+":"+inst.getMnemonicString();
                if ((reg.equals("x3")||reg.equals("w3")) && status.isEmpty()) status=target;
                if ((reg.equals("x4")||reg.equals("w4")) && playerPtr.isEmpty()) playerPtr=target;
                if ((reg.equals("x2")||reg.equals("w2")) && handle.isEmpty()) handle=target;
            }
            visited++;
            inst=inst.getNext();
        }
        return new String[]{handle,status,playerPtr,Integer.toString(visited)};
    }

    private String comparisons(HighFunction high) {
        if (high==null) return "";
        Set<String> named=new HashSet<>(Arrays.asList(
            "INT_EQUAL","INT_NOTEQUAL","INT_LESS","INT_SLESS",
            "INT_LESSEQUAL","INT_SLESSEQUAL"));
        List<String> tuples=new ArrayList<>();
        Iterator<PcodeOpAST> it=high.getPcodeOps();
        while(it.hasNext() && tuples.size()<40) {
            PcodeOpAST p=it.next();
            String mnemonic=p.getMnemonic();
            if (!named.contains(mnemonic)) continue;
            StringBuilder description=new StringBuilder();
            for (int i=0;i<p.getNumInputs();i++) {
                Varnode v=p.getInput(i);
                if (v!=null && v.isConstant() && v.getOffset()<=65535) {
                    if (description.length()>0) description.append("/");
                    description.append(v.getOffset());
                }
            }
            if(description.length()>0) {
                tuples.add(p.getSeqnum().getTarget().toString()+":"+mnemonic+":"+description.toString());
            }
        }
        return String.join(";", tuples);
    }

    @Override
    protected void run() throws Exception {
        String[] args=getScriptArgs();
        if(args.length<2) throw new IllegalArgumentException("Need JNI registration candidate CSV and output path");
        DecompInterface dec=new DecompInterface();
        dec.openProgram(currentProgram);
        int total=0, functions=0, decompiled=0;
        try(BufferedWriter writer=Files.newBufferedWriter(Paths.get(args[1]),StandardCharsets.UTF_8)) {
            writer.write("jni_method,candidate_elf_rva,mapped_addr,function_entry,function_size_bytes,");
            writer.write("first_handle_x2_input,first_status_x3_input,first_payload_x4_input,");
            writer.write("linear_instructions_sampled,pcode_comparisons_small_constants,decompiler_status");
            writer.newLine();
            List<String> raw=Files.readAllLines(Paths.get(args[0]),StandardCharsets.UTF_8);
            if(raw.isEmpty()||!raw.get(0).contains("native_function_candidate_rva"))
                throw new IllegalArgumentException("Wrong registration candidate CSV header");
            for(String line:raw.subList(1,raw.size())) {
                if(line.trim().isEmpty()||monitor.isCancelled()) continue;
                String[] parts=line.replace("\"","").split(",",-1);
                if(parts.length<5||!parts[4].startsWith("0x")) continue;
                String method=parts[0];
                long rva=Long.parseUnsignedLong(parts[4].substring(2),16);
                Address addr=resolveCodeAddress(rva);
                Function f=getFunctionAt(addr);
                if(f==null) f=getFunctionContaining(addr);
                String entry="",size="",handle="",status="",payload="",count="";
                String comparisons="",decompileStatus="NO_FUNCTION";
                if(f!=null) {
                    functions++;
                    entry=f.getEntryPoint().toString();
                    size=Long.toString(f.getBody().getNumAddresses());
                    String[] touches=firstArgumentTouches(f);
                    handle=touches[0];status=touches[1];payload=touches[2];count=touches[3];
                    DecompileResults result=dec.decompileFunction(f,90,monitor);
                    if(result!=null && result.decompileCompleted()) {
                        decompileStatus="DECOMPILED_STATIC";
                        decompiled++;
                        comparisons=comparisons(result.getHighFunction());
                    } else {
                        decompileStatus="DECOMPILER_INCOMPLETE";
                    }
                }
                String[] values=new String[]{method,parts[4],addr.toString(),entry,size,
                    handle,status,payload,count,comparisons,decompileStatus};
                for(int i=0;i<values.length;i++) {
                    if(i>0)writer.write(",");
                    writer.write(csv(values[i]));
                }
                writer.newLine();
                total++;
            }
        } finally {
            dec.dispose();
        }
        println("PVZ2_NATIVE_LOGIN_SEMANTICS rows="+total+" funcs="+functions+" decompiled="+decompiled);
    }
}
