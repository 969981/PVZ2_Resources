// Ghidra headless script: recovered function metadata for real PVZ2 4.2.8.
 // @category PVZ2.Offline
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.mem.Memory;
import ghidra.program.model.listing.Instruction;

import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.util.Set;
import java.util.stream.Collectors;

public class PvZ2CodeXrefs extends GhidraScript {
    private String csv(String value) {
        if (value == null) return "";
        return "\"" + value.replace("\"", "\"\"") + "\"";
    }

    private String joinFunctions(Set<Function> functions, int limit) {
        if (functions == null) return "";
        return functions.stream()
                .limit(limit)
                .map(f -> f.getName() + "@" + f.getEntryPoint().toString())
                .collect(Collectors.joining(";"));
    }

    private Address findMappedAddress(long rva) {
        Memory memory = currentProgram.getMemory();
        Address raw = toAddr(rva);
        Address shifted = toAddr(currentProgram.getImageBase().getOffset() + rva);
        boolean rawIn = memory.contains(raw);
        boolean shiftedIn = memory.contains(shifted);
        if (rawIn && getInstructionAt(raw) != null) return raw;
        if (shiftedIn && getInstructionAt(shifted) != null) return shifted;
        if (rawIn) return raw;
        if (shiftedIn) return shifted;
        return raw;
    }

    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length < 2) {
            throw new IllegalArgumentException("Need input candidate CSV and output CSV paths");
        }
        String input = args[0];
        String output = args[1];
        int refs = 0, resolved = 0;
        try (BufferedReader reader = Files.newBufferedReader(Paths.get(input), StandardCharsets.UTF_8);
             BufferedWriter writer = Files.newBufferedWriter(Paths.get(output), StandardCharsets.UTF_8)) {
            writer.write("domain_hint,native_literal_rva_hex,code_reference_rva_hex,");
            writer.write("mapped_instruction_address,ghidra_image_base,function_name,function_entry,");
            writer.write("function_num_addresses,callee_count,caller_count,sample_callees,sample_callers");
            writer.newLine();
            String header = reader.readLine();
            if (header == null || !header.contains("code_reference_rva_hex")) {
                throw new IllegalArgumentException("Invalid xref CSV header");
            }
            String line;
            while ((line = reader.readLine()) != null && !monitor.isCancelled()) {
                String[] columns = line.replace("\"", "").split(",", -1);
                if (columns.length < 4) continue;
                String domain = columns[0];
                String literal = columns[1];
                String xref = columns[2];
                if (!xref.startsWith("0x")) continue;
                long rva = Long.parseUnsignedLong(xref.substring(2), 16);
                Address at = findMappedAddress(rva);
                Instruction instr = getInstructionAt(at);
                Function function = getFunctionContaining(at);
                String name = function == null ? "UNRESOLVED" : function.getName();
                String entry = function == null ? "" : function.getEntryPoint().toString();
                String size = function == null ? "" : Long.toString(function.getBody().getNumAddresses());
                String calleeCount = "", callerCount = "", calleeSample = "", callerSample = "";
                if (function != null) {
                    resolved++;
                    Set<Function> callees = function.getCalledFunctions(monitor);
                    Set<Function> callers = function.getCallingFunctions(monitor);
                    calleeCount = Integer.toString(callees.size());
                    callerCount = Integer.toString(callers.size());
                    calleeSample = joinFunctions(callees, 18);
                    callerSample = joinFunctions(callers, 18);
                }
                String[] values = {
                    domain, literal, xref,
                    instr == null ? "NO_DISASSEMBLY" : instr.getAddress().toString(),
                    currentProgram.getImageBase().toString(),
                    name, entry, size, calleeCount, callerCount, calleeSample, callerSample
                };
                for (int i = 0; i < values.length; i++) {
                    if (i > 0) writer.write(",");
                    writer.write(csv(values[i]));
                }
                writer.newLine();
                refs++;
            }
        }
        println("PVZ2_GHIDRA_XREF_REPORT rows=" + refs + " functions_resolved=" + resolved);
    }
}
