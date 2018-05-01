
// Generated by Cadence Encounter(R) RTL Compiler RC14.28 - v14.20-s067_1

// Verification Directory fv/ex_dep_v_ld_logic 

module ex_dep_v_ld_logic(V_ex, eip_change, AF_needed, DF_needed,
     CF_needed, v_wb_ld_flag_AF, v_wb_ld_flag_DF, v_wb_ld_flag_CF,
     wb_mem_stall, ld_reg1, ld_reg2, ld_reg3, ld_flag_ZF, ld_seg,
     ld_mm, ld_mem, v_ro_ld_reg1, v_ro_ld_reg2, v_ro_ld_reg3,
     v_ro_ld_flag_ZF, v_ro_ld_seg, v_ro_ld_mm, v_ro_ld_mem, dep_stall,
     br_stall, V_wb, ld_wb);
  input V_ex, eip_change, AF_needed, DF_needed, CF_needed,
       v_wb_ld_flag_AF, v_wb_ld_flag_DF, v_wb_ld_flag_CF, wb_mem_stall,
       ld_reg1, ld_reg2, ld_reg3, ld_flag_ZF, ld_seg, ld_mm, ld_mem;
  output v_ro_ld_reg1, v_ro_ld_reg2, v_ro_ld_reg3, v_ro_ld_flag_ZF,
       v_ro_ld_seg, v_ro_ld_mm, v_ro_ld_mem, dep_stall, br_stall, V_wb,
       ld_wb;
  wire V_ex, eip_change, AF_needed, DF_needed, CF_needed,
       v_wb_ld_flag_AF, v_wb_ld_flag_DF, v_wb_ld_flag_CF, wb_mem_stall,
       ld_reg1, ld_reg2, ld_reg3, ld_flag_ZF, ld_seg, ld_mm, ld_mem;
  wire v_ro_ld_reg1, v_ro_ld_reg2, v_ro_ld_reg3, v_ro_ld_flag_ZF,
       v_ro_ld_seg, v_ro_ld_mm, v_ro_ld_mem, dep_stall, br_stall, V_wb,
       ld_wb;
  wire n_9, n_10, n_11, n_13;
  and2$ g594(.in0 (n_13), .in1 (V_ex), .out (dep_stall));
  nand3$ g595(.in0 (n_10), .in1 (n_9), .in2 (n_11), .out (n_13));
  and4$ g596(.in0 (n_11), .in1 (n_10), .in2 (n_9), .in3 (V_ex), .out
       (V_wb));
  and2$ g604(.in0 (V_ex), .in1 (ld_mm), .out (v_ro_ld_mm));
  nand2$ g603(.in0 (AF_needed), .in1 (v_wb_ld_flag_AF), .out (n_10));
  and2$ g598(.in0 (V_ex), .in1 (ld_reg1), .out (v_ro_ld_reg1));
  and2$ g599(.in0 (V_ex), .in1 (ld_reg2), .out (v_ro_ld_reg2));
  nand2$ g601(.in0 (CF_needed), .in1 (v_wb_ld_flag_CF), .out (n_9));
  and2$ g607(.in0 (V_ex), .in1 (ld_reg3), .out (v_ro_ld_reg3));
  and2$ g600(.in0 (V_ex), .in1 (ld_flag_ZF), .out (v_ro_ld_flag_ZF));
  and2$ g602(.in0 (V_ex), .in1 (ld_seg), .out (v_ro_ld_seg));
  nand2$ g605(.in0 (DF_needed), .in1 (v_wb_ld_flag_DF), .out (n_11));
  and2$ g597(.in0 (V_ex), .in1 (ld_mem), .out (v_ro_ld_mem));
  and2$ g606(.in0 (V_ex), .in1 (eip_change), .out (br_stall));
  inv1$ g608(.in (wb_mem_stall), .out (ld_wb));
endmodule

