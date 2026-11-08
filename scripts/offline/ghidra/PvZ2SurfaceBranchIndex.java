// Metadata-only analysis of original CHN 4.2.8 ELF (verified by CI).
// Extracts the JNI-containing function and one-hop static callers. A branch
// in this output is NOT evidence of an integrity decision or a safe patch.
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
import java.util.Set;

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

    private void row(BufferedWriter writer, String type, String instructionAddress,
                     String mnemonic, String flowTargets, Function fn,
                     String previousCall, Address query, String scope, String warning)
                     throws Exception {
        String[] values = {
            type, instructionAddress, mnemonic, flowTargets, fn.getName(),
            fn.getEntryPoint().toString(), previousCall, query.toString(),
            scope, warning
        };
        for (int i = 0; i < values.length; i++) {
            if (i > 0) writer.write(",");
            writer.write(csv(values[i]));
        }
        writer.newLine();
    }

    private void scan(BufferedWriter writer, Function fn, Address query,
                      String scope) throws Exception {
        int branches = 0, calls = 0;
        // This is the last call in *address order*, NOT necessarily the
        // executed predecessor: static control flow can jump across blocks.
        String previousCall = "";
        InstructionIterator it = currentProgram.getListing().getInstructions(fn.getBody(), true);
        while (it.hasNext() && !monitor.isCancelled()) {
            Instruction instruction = it.next();
            FlowType flow = instruction.getFlowType();
            String type = null;
            if (flow.isCall()) {
                type = flow.isComputed() ? "indirect_call" : "direct_call";
                calls++;
            } else if (flow.isJump() && flow.isConditional()) {
                type = flow.isComputed() ? "computed_conditional_branch" : "conditional_branch";
                branches++;
            }
            if (type == null) continue;
            String at = instruction.getAddress().toString();
            row(writer, type, at, instruction.getMnemonicString(), flows(instruction),
                fn, previousCall, query, scope,
                "STATIC_ONLY; previous call is address-ordered, not causal predecessor");
            if (flow.isCall()) previousCall = at;
        }
        println("PVZ2_SURFACE_SCAN " + scope + " " + fn.getName() + "@" +
                fn.getEntryPoint() + " calls=" + calls + " conditional_branches=" + branches);
    }

    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length != 2)
            throw new IllegalArgumentException("Expected native candidate RVA and CSV path");
        String literal = args[0].replace("0x", "").replace("0X", "");
        Address query = toAddr(Long.parseUnsignedLong(literal, 16));
        Instruction pointed = getInstructionAt(query);
        Function function = getFunctionContaining(query);
        if (pointed == null || function == null)
            throw new IllegalStateException("JNI pointer not mapped to a Ghidra instruction and function");

        try (BufferedWriter writer = Files.newBufferedWriter(
                Paths.get(args[1]), StandardCharsets.UTF_8)) {
            writer.write("type,instruction_address,mnemonic,flow_targets,function_name,"
                       + "function_entry,last_callsite,query_jni_pointer,scope,warning");
            writer.newLine();
            row(writer, "entry", query.toString(), pointed.getMnemonicString(), "",
                function, "", query, "JNI_CONTAINING_FUNCTION",
                "JNI registration pointer is inside this function, not proven entry");
            scan(writer, function, query, "JNI_CONTAINING_FUNCTION");
            Set<Function> callers = function.getCallingFunctions(monitor);
            int examined = 0;
            for (Function caller : callers) {
                if (monitor.isCancelled() || examined >= 8) break;
                if (caller.getEntryPoint().equals(function.getEntryPoint())) continue;
                scan(writer, caller, query, "ONE_HOP_STATIC_CALLER");
                examined++;
            }
            println("PVZ2_SURFACE_BRANCH_INDEX queried=" + query +
                    " static_callers_examined=" + examined +
                    " (callers are static only; integrity branch not proven)");
        }
    }
}
