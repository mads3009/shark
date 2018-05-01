
// Generated by Cadence Encounter(R) RTL Compiler RC14.28 - v14.20-s067_1

// Verification Directory fv/hash2 

module hash2(byte_in, nibble_out);
  input [7:0] byte_in;
  output [4:0] nibble_out;
  wire [7:0] byte_in;
  wire [4:0] nibble_out;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_30, n_33;
  nand3$ g2177(.in0 (n_27), .in1 (n_28), .in2 (n_33), .out
       (nibble_out[4]));
  nand4$ g2179(.in0 (n_30), .in1 (n_33), .in2 (n_18), .in3 (n_13), .out
       (nibble_out[0]));
  nand4$ g2181(.in0 (n_10), .in1 (n_23), .in2 (n_20), .in3 (n_24), .out
       (nibble_out[3]));
  nand4$ g2178(.in0 (n_26), .in1 (n_33), .in2 (n_19), .in3 (n_30), .out
       (nibble_out[1]));
  or4$ g2180(.in0 (n_11), .in1 (n_22), .in2 (n_25), .in3 (byte_in[2]),
       .out (nibble_out[2]));
  and2$ g2183(.in0 (n_16), .in1 (n_17), .out (n_28));
  nand2$ g2184(.in0 (n_15), .in1 (byte_in[4]), .out (n_27));
  nand2$ g2182(.in0 (n_25), .in1 (n_21), .out (n_26));
  and3$ g2185(.in0 (n_24), .in1 (n_4), .in2 (byte_in[7]), .out (n_33));
  inv1$ g2195(.in (n_22), .out (n_23));
  nand3$ g2196(.in0 (n_21), .in1 (n_12), .in2 (byte_in[7]), .out
       (n_22));
  inv1$ g2188(.in (n_25), .out (n_20));
  mux2$ g2186(.s0 (byte_in[6]), .in0 (n_0), .in1 (n_14), .outb (n_30));
  and2$ g2190(.in0 (n_5), .in1 (n_7), .out (n_19));
  and2$ g2191(.in0 (n_17), .in1 (n_6), .out (n_18));
  nand3$ g2192(.in0 (n_21), .in1 (n_9), .in2 (byte_in[2]), .out (n_16));
  nand2$ g2193(.in0 (n_14), .in1 (n_8), .out (n_15));
  mux2$ g2187(.s0 (byte_in[6]), .in0 (n_12), .in1 (byte_in[1]), .outb
       (n_13));
  inv1$ g2197(.in (n_24), .out (n_11));
  nand2$ g2189(.in0 (n_3), .in1 (n_2), .out (n_25));
  nand2$ g2194(.in0 (n_9), .in1 (byte_in[2]), .out (n_10));
  xnor2$ g2198(.in0 (byte_in[5]), .in1 (byte_in[4]), .out (n_24));
  nand2$ g2199(.in0 (n_7), .in1 (n_6), .out (n_8));
  nand2$ g2200(.in0 (n_6), .in1 (byte_in[6]), .out (n_5));
  nand2$ g2201(.in0 (n_1), .in1 (byte_in[6]), .out (n_4));
  nand2$ g2202(.in0 (n_21), .in1 (byte_in[3]), .out (n_17));
  nand2$ g2203(.in0 (byte_in[4]), .in1 (byte_in[1]), .out (n_12));
  nand2$ g2204(.in0 (byte_in[4]), .in1 (byte_in[0]), .out (n_3));
  nand2$ g2205(.in0 (byte_in[1]), .in1 (byte_in[0]), .out (n_9));
  and2$ g2206(.in0 (byte_in[3]), .in1 (byte_in[2]), .out (n_14));
  inv1$ g2209(.in (byte_in[3]), .out (n_2));
  inv1$ g2211(.in (byte_in[4]), .out (n_1));
  inv1$ g2208(.in (byte_in[1]), .out (n_7));
  inv1$ g2212(.in (byte_in[6]), .out (n_21));
  inv1$ g2210(.in (byte_in[2]), .out (n_0));
  inv1$ g2207(.in (byte_in[0]), .out (n_6));
endmodule

