// Read-only metadata-only Ghidra script; source APK/ELF SHA is verified by CI.
// Reports instruction addresses, branch targets and previous callsite, never bytes
// or decompiled original commercial game source.
// @category PVZ2.Offline
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.InstructionIterator;
import ghidra.program.model.symbol.FlowType;

import java.io.BufferedWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

public class PvZ2SurfaceBranchIndex extends GhidraScript {
    private String csv(String value) {
        return "\"" + (value == null ? "" : value.replace("\"", "\"\"")) + "\"";
    }

    private String flows(Instruction instruction) {
        StringBuilder result = new StringBuilder();
        for (Address target : instruction.getFlows()) {
            if (result.length() != 0) result.append(";");
            result.append(target.toString());
        }
        return result.toString();
    }

    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length != 2)
            throw new IllegalArgumentException("Expected native candidate RVA and CSV path");
        String literal = args[0].replace("0x", "").replace("0X", "");
        long nativeRva = Long.parseUnsignedLong(literal, 16);
        Address addr = toAddr(nativeRva);
        Instruction pointed = getInstructionAt(addr);
        Function function = getFunctionContaining(addr);
        if (pointed == null || function == null)
            throw new IllegalStateException("Original JNI target does not map to a Ghidra instruction and function");

        String name = function.getName();
        Address entry = function.getEntryPoint();
        int numInstructions = 0;
        int numBranches = 0;
        int numCalls = 0;
        String previousCall = "";
        try (BufferedWriter writer = Files.newBufferedWriter(
                 Paths.get(args[1]), StandardCharsets.UTF_8)) {
            writer.write("type,instruction_address,mnemonic,flow_targets,function_name,function_entry,"
                       + "last_callsite,query_jni_pointer,warning");
            writer.newLine();
            writer.write(csv("entry") + "," + csv(addr.toString()) + "," +
                         csv(pointed.getMnemonicString()) + "," + csv("") + "," +
                         csv(name) + "," + csv(entry.toString()) + "," + csv("") + "," +
                         csv(addr.toString()) + "," +
                         csv("Pointer is inside a Ghidra recognized function; original entry not presumed"));
            writer.newLine();
            InstructionIterator it = currentProgram.getListing().getInstructions(function.getBody(), true);
            while (it.hasNext() && !monitor.isCancelled()) {
                Instruction instruction = it.next();
                numInstructions++;
                FlowType flow = instruction.getFlowType();
                String type = null;
                if (flow.isCall()) {
                    type = flow.isComputed() ? "indirect_call" : "direct_call";
                    numCalls++;
                } else if (flow.isJump() && flow.isConditional()) {
                    type = flow.isComputed() ? "computed_conditional_branch" : "conditional_branch";
                    numBranches++;
                }
                if (type != null) {
                    String at = instruction.getAddress().toString();
                    writer.write(csv(type) + "," + csv(at) + "," +
                                 csv(instruction.getMnemonicString()) + "," +
                                 csv(flows(instruction)) + "," + csv(name) + "," +
                                 csv(entry.toString()) + "," + csv(previousCall) + "," +
                                 csv(addr.toString()) + "," +
                                 csv("Static flow metadata, not an identified integrity check"));
                    writer.newLine();
                    if (flow.isCall()) previousCall = at;
                }
            }
        }
        println("PVZ2_SURFACE_BRANCH_INDEX " + name + "@" + entry +
                " queried=" + addr + " instructions=" + numInstructions +
                " calls=" + numCalls + " conditional_branches=" + numBranches);
    }
}
