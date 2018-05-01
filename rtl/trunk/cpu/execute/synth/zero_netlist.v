
// Generated by Cadence Encounter(R) RTL Compiler RC14.28 - v14.20-s067_1

// Verification Directory fv/zero 

module zero(in, out);
  input [4:0] in;
  output out;
  wire [4:0] in;
  wire out;
  wire n_0, n_1, n_2;
  and3$ g67(.in0 (n_1), .in1 (n_2), .in2 (n_0), .out (out));
  nor2$ g68(.in0 (in[4]), .in1 (in[3]), .out (n_2));
  nor2$ g69(.in0 (in[2]), .in1 (in[1]), .out (n_1));
  inv1$ g70(.in (in[0]), .out (n_0));
endmodule

