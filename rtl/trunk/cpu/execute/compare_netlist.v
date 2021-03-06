
// Generated by Cadence Encounter(R) RTL Compiler RC14.28 - v14.20-s067_1

// Verification Directory fv/compare 

module compare8(in0, in1, out);
  input [7:0] in0, in1;
  output out;
  wire [7:0] in0, in1;
  wire out;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_25;
  wire n_26, n_27, n_28, n_30, n_31, n_32, n_33, n_34;
  wire n_36, n_54, n_55;
  nand3$ g2687(.in0 (n_34), .in1 (n_36), .in2 (n_30), .out (out));
  nand3$ g2688(.in0 (n_33), .in1 (n_55), .in2 (n_26), .out (n_36));
  nand2$ g2690(.in0 (n_31), .in1 (n_33), .out (n_34));
  nand3$ g2694(.in0 (n_16), .in1 (n_27), .in2 (n_18), .out (n_32));
  nand2$ g2693(.in0 (n_28), .in1 (n_9), .out (n_31));
  nand2$ g2692(.in0 (n_20), .in1 (n_21), .out (n_30));
  nand3$ g2700(.in0 (n_10), .in1 (n_25), .in2 (in1[4]), .out (n_28));
  nand3$ g2701(.in0 (n_1), .in1 (n_17), .in2 (in0[0]), .out (n_27));
  and3$ g2695(.in0 (n_25), .in1 (n_15), .in2 (n_11), .out (n_26));
  and2$ g2698(.in0 (n_21), .in1 (n_13), .out (n_33));
  nand2$ g2699(.in0 (n_8), .in1 (n_19), .out (n_20));
  nand2$ g2705(.in0 (n_12), .in1 (in1[6]), .out (n_19));
  nand2$ g2706(.in0 (n_6), .in1 (in0[7]), .out (n_21));
  nand2$ g2707(.in0 (n_3), .in1 (in0[5]), .out (n_25));
  nand2$ g2708(.in0 (n_0), .in1 (in0[1]), .out (n_18));
  nand2$ g2709(.in0 (n_4), .in1 (in1[1]), .out (n_17));
  or2$ g2710(.in0 (n_7), .in1 (in1[2]), .out (n_16));
  nand2$ g2711(.in0 (n_14), .in1 (in0[3]), .out (n_15));
  or2$ g2712(.in0 (n_12), .in1 (in1[6]), .out (n_13));
  or2$ g2713(.in0 (n_10), .in1 (in1[4]), .out (n_11));
  nand2$ g2702(.in0 (n_5), .in1 (in1[5]), .out (n_9));
  nand2$ g2703(.in0 (n_2), .in1 (in1[7]), .out (n_8));
  nand2$ g2704(.in0 (n_7), .in1 (in1[2]), .out (n_22));
  inv1$ g2720(.in (in0[6]), .out (n_12));
  inv1$ g2715(.in (in0[4]), .out (n_10));
  inv1$ g2722(.in (in1[3]), .out (n_14));
  inv1$ g2724(.in (in1[7]), .out (n_6));
  inv1$ g2714(.in (in0[5]), .out (n_5));
  inv1$ g2716(.in (in0[1]), .out (n_4));
  inv1$ g2719(.in (in1[5]), .out (n_3));
  inv1$ g2718(.in (in0[7]), .out (n_2));
  inv1$ g2723(.in (in0[2]), .out (n_7));
  inv1$ g2721(.in (in1[0]), .out (n_1));
  inv1$ g2717(.in (in1[1]), .out (n_0));
  nand3$ g2(.in0 (n_54), .in1 (n_22), .in2 (n_32), .out (n_55));
  or2$ g3(.in0 (in0[3]), .in1 (n_14), .out (n_54));
endmodule

module compare4(in0, in1, out);
  input [3:0] in0, in1;
  output out;
  wire [3:0] in0, in1;
  wire out;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11;
  nand3$ g838(.in0 (n_9), .in1 (n_11), .in2 (n_4), .out (out));
  nand4$ g839(.in0 (n_6), .in1 (n_2), .in2 (n_10), .in3 (n_8), .out
       (n_11));
  nand3$ g840(.in0 (n_0), .in1 (n_7), .in2 (in0[0]), .out (n_10));
  nand3$ g841(.in0 (n_1), .in1 (n_8), .in2 (in1[2]), .out (n_9));
  or2$ g846(.in0 (n_3), .in1 (in1[3]), .out (n_8));
  nand2$ g842(.in0 (n_5), .in1 (in1[1]), .out (n_7));
  or2$ g843(.in0 (n_5), .in1 (in1[1]), .out (n_6));
  nand2$ g844(.in0 (n_3), .in1 (in1[3]), .out (n_4));
  or2$ g845(.in0 (n_1), .in1 (in1[2]), .out (n_2));
  inv1$ g850(.in (in0[1]), .out (n_5));
  inv1$ g847(.in (in1[0]), .out (n_0));
  inv1$ g849(.in (in0[3]), .out (n_3));
  inv1$ g848(.in (in0[2]), .out (n_1));
endmodule

