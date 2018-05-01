
// Generated by Cadence Encounter(R) RTL Compiler RC14.28 - v14.20-s067_1

// Verification Directory fv/dep_ld_reg 

module dep_ld_reg(cmps_op, mod, mod_rm_pr, sib_pr, sr1_needed,
     sr2_needed, sr1_rm, sr2_rm, sr3_eax, sr3_esp, ld_sr1, ld_sr2,
     in1_needed, in2_needed, in3_needed, in4_needed, eax_needed,
     esp_needed, ld_r1, ld_r2);
  input cmps_op, mod_rm_pr, sib_pr, sr1_needed, sr2_needed, sr1_rm,
       sr2_rm, sr3_eax, sr3_esp, ld_sr1, ld_sr2;
  input [1:0] mod;
  output in1_needed, in2_needed, in3_needed, in4_needed, eax_needed,
       esp_needed, ld_r1, ld_r2;
  wire cmps_op, mod_rm_pr, sib_pr, sr1_needed, sr2_needed, sr1_rm,
       sr2_rm, sr3_eax, sr3_esp, ld_sr1, ld_sr2;
  wire [1:0] mod;
  wire in1_needed, in2_needed, in3_needed, in4_needed, eax_needed,
       esp_needed, ld_r1, ld_r2;
  wire n_0, n_2, n_3, n_4, n_6, n_8;
  assign esp_needed = sr3_esp;
  assign eax_needed = sr3_eax;
  and2$ g340(.in0 (n_8), .in1 (sr1_needed), .out (in3_needed));
  and2$ g341(.in0 (n_6), .in1 (sr2_needed), .out (in4_needed));
  and2$ g342(.in0 (n_8), .in1 (ld_sr1), .out (ld_r1));
  and2$ g343(.in0 (n_6), .in1 (ld_sr2), .out (ld_r2));
  nand2$ g344(.in0 (n_3), .in1 (n_0), .out (in1_needed));
  nand2$ g345(.in0 (n_4), .in1 (sr2_rm), .out (n_6));
  nand2$ g346(.in0 (n_4), .in1 (sr1_rm), .out (n_8));
  nand2$ g347(.in0 (n_2), .in1 (mod_rm_pr), .out (n_3));
  nand3$ g348(.in0 (mod[0]), .in1 (mod[1]), .in2 (mod_rm_pr), .out
       (n_4));
  nand2$ g350(.in0 (mod[1]), .in1 (mod[0]), .out (n_2));
  or2$ g349(.in0 (cmps_op), .in1 (sib_pr), .out (in2_needed));
  inv1$ g351(.in (cmps_op), .out (n_0));
endmodule

