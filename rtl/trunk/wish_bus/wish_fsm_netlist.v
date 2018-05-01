
// Generated by Cadence Encounter(R) RTL Compiler RC14.28 - v14.20-s067_1

// Verification Directory fv/wish_fsm 

module wish_fsm(clk, rst_n, m_mmu_cyc, m_mmu_ack, m_dma_cyc, m_dma_ack,
     curr_st);
  input clk, rst_n, m_mmu_cyc, m_mmu_ack, m_dma_cyc, m_dma_ack;
  output [2:0] curr_st;
  wire clk, rst_n, m_mmu_cyc, m_mmu_ack, m_dma_cyc, m_dma_ack;
  wire [2:0] curr_st;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, n_0, n_1, n_2, n_3, n_4;
  wire n_5, n_6, n_7, n_8, n_9, n_10, n_11, n_12;
  wire n_13, n_14, n_15, n_16, n_17, n_18, n_19, n_20;
  wire n_21, n_22, n_23, n_24;
  dff$ \curr_st_reg[0] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_24),
       .q (curr_st[0]), .qbar (UNCONNECTED));
  dff$ \curr_st_reg[1] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_21),
       .q (curr_st[1]), .qbar (UNCONNECTED0));
  dff$ \curr_st_reg[2] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_23),
       .q (curr_st[2]), .qbar (UNCONNECTED1));
  nand4$ g1192(.in0 (n_15), .in1 (n_14), .in2 (n_22), .in3 (n_20), .out
       (n_24));
  nand3$ g1197(.in0 (n_22), .in1 (n_17), .in2 (n_10), .out (n_23));
  nand2$ g1194(.in0 (n_16), .in1 (n_19), .out (n_21));
  nand3$ g1195(.in0 (m_mmu_cyc), .in1 (n_0), .in2 (n_18), .out (n_20));
  nand3$ g1196(.in0 (m_mmu_cyc), .in1 (m_mmu_ack), .in2 (n_18), .out
       (n_19));
  nand2$ g1198(.in0 (n_12), .in1 (n_13), .out (n_17));
  nand3$ g1200(.in0 (n_5), .in1 (n_8), .in2 (curr_st[2]), .out (n_16));
  nand3$ g1199(.in0 (m_dma_cyc), .in1 (n_1), .in2 (n_9), .out (n_15));
  nand3$ g1205(.in0 (n_2), .in1 (n_4), .in2 (curr_st[2]), .out (n_22));
  nand3$ g1206(.in0 (n_11), .in1 (n_13), .in2 (curr_st[0]), .out
       (n_14));
  nand2$ g1202(.in0 (n_7), .in1 (n_11), .out (n_12));
  nor2$ g1203(.in0 (n_3), .in1 (curr_st[2]), .out (n_18));
  nand2$ g1204(.in0 (m_dma_cyc), .in1 (n_9), .out (n_10));
  or2$ g1201(.in0 (n_13), .in1 (n_6), .out (n_8));
  nand2$ g1207(.in0 (m_dma_cyc), .in1 (n_6), .out (n_7));
  nor2$ g1208(.in0 (n_11), .in1 (curr_st[0]), .out (n_9));
  inv1$ g1210(.in (n_4), .out (n_5));
  nor2$ g1212(.in0 (n_6), .in1 (n_2), .out (n_3));
  nand2$ g1211(.in0 (m_dma_cyc), .in1 (m_dma_ack), .out (n_4));
  nor2$ g1209(.in0 (m_mmu_cyc), .in1 (curr_st[1]), .out (n_13));
  inv1$ g1216(.in (m_dma_ack), .out (n_1));
  inv1$ g1217(.in (m_mmu_ack), .out (n_0));
  inv1$ g1213(.in (curr_st[2]), .out (n_11));
  inv1$ g1215(.in (curr_st[1]), .out (n_2));
  inv1$ g1214(.in (curr_st[0]), .out (n_6));
endmodule
