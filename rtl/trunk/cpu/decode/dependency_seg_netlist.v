
// Generated by Cadence Encounter(R) RTL Compiler RC14.28 - v14.20-s067_1

// Verification Directory fv/dependency_seg 

module dependency_seg(cmps_op, mod, mod_rm_pr, stack_read, stack_write,
     seg3_needed_in, seg1_needed, seg2_needed, seg3_needed);
  input cmps_op, mod_rm_pr, stack_read, stack_write, seg3_needed_in;
  input [1:0] mod;
  output seg1_needed, seg2_needed, seg3_needed;
  wire cmps_op, mod_rm_pr, stack_read, stack_write, seg3_needed_in;
  wire [1:0] mod;
  wire seg1_needed, seg2_needed, seg3_needed;
  wire n_0, n_1, n_3;
  assign seg3_needed = seg3_needed_in;
  nand2$ g90(.in0 (n_3), .in1 (n_0), .out (seg1_needed));
  nand2$ g91(.in0 (n_1), .in1 (mod_rm_pr), .out (n_3));
  or3$ g92(.in0 (stack_read), .in1 (cmps_op), .in2 (stack_write), .out
       (seg2_needed));
  nand2$ g93(.in0 (mod[1]), .in1 (mod[0]), .out (n_1));
  inv1$ g94(.in (cmps_op), .out (n_0));
endmodule

