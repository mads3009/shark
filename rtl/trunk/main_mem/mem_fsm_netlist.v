
// Generated by Cadence Encounter(R) RTL Compiler RC14.28 - v14.20-s067_1

// Verification Directory fv/mem_fsm 

module addr_ch_logic(clk, rst_n, addr, addr_ch);
  input clk, rst_n;
  input [31:0] addr;
  output addr_ch;
  wire clk, rst_n;
  wire [31:0] addr;
  wire addr_ch;
  wire [31:0] r_addr_del;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2,
       UNCONNECTED3, UNCONNECTED4, UNCONNECTED5, UNCONNECTED6;
  wire UNCONNECTED7, UNCONNECTED8, n_1, n_2, n_3, n_4, n_5, n_6;
  wire n_7, n_8, n_9, n_10, n_11, n_12, n_13, n_14;
  wire n_15, n_16, n_17, n_18, n_19, n_20, n_21, n_22;
  nand4$ g441(.in0 (n_17), .in1 (n_21), .in2 (n_22), .in3 (n_18), .out
       (addr_ch));
  nor4$ g442(.in0 (n_16), .in1 (n_11), .in2 (n_20), .in3 (n_12), .out
       (n_22));
  nor4$ g443(.in0 (n_15), .in1 (n_9), .in2 (n_19), .in3 (n_10), .out
       (n_21));
  nand3$ g444(.in0 (n_14), .in1 (n_7), .in2 (n_8), .out (n_20));
  nand3$ g445(.in0 (n_13), .in1 (n_5), .in2 (n_6), .out (n_19));
  xnor2$ g446(.in0 (addr[14]), .in1 (r_addr_del[14]), .out (n_18));
  xnor2$ g447(.in0 (addr[13]), .in1 (r_addr_del[13]), .out (n_17));
  xor2$ g448(.in0 (addr[5]), .in1 (r_addr_del[5]), .out (n_16));
  xor2$ g449(.in0 (addr[10]), .in1 (r_addr_del[10]), .out (n_15));
  xnor2$ g450(.in0 (addr[8]), .in1 (r_addr_del[8]), .out (n_14));
  xnor2$ g451(.in0 (addr[9]), .in1 (r_addr_del[9]), .out (n_13));
  nor2$ g452(.in0 (addr[7]), .in1 (n_4), .out (n_12));
  nor2$ g453(.in0 (n_1), .in1 (r_addr_del[6]), .out (n_11));
  nor2$ g454(.in0 (addr[12]), .in1 (n_3), .out (n_10));
  nor2$ g455(.in0 (n_2), .in1 (r_addr_del[11]), .out (n_9));
  nand2$ g456(.in0 (addr[7]), .in1 (n_4), .out (n_8));
  nand2$ g457(.in0 (n_1), .in1 (r_addr_del[6]), .out (n_7));
  nand2$ g458(.in0 (addr[12]), .in1 (n_3), .out (n_6));
  nand2$ g459(.in0 (n_2), .in1 (r_addr_del[11]), .out (n_5));
  dff$ \r_addr_del_reg[5] (.r (rst_n), .s (1'b1), .clk (clk), .d
       (addr[5]), .q (r_addr_del[5]), .qbar (UNCONNECTED));
  dff$ \r_addr_del_reg[14] (.r (rst_n), .s (1'b1), .clk (clk), .d
       (addr[14]), .q (r_addr_del[14]), .qbar (UNCONNECTED0));
  dff$ \r_addr_del_reg[6] (.r (rst_n), .s (1'b1), .clk (clk), .d
       (addr[6]), .q (r_addr_del[6]), .qbar (UNCONNECTED1));
  inv1$ g463(.in (r_addr_del[7]), .out (n_4));
  dff$ \r_addr_del_reg[7] (.r (rst_n), .s (1'b1), .clk (clk), .d
       (addr[7]), .q (r_addr_del[7]), .qbar (UNCONNECTED2));
  dff$ \r_addr_del_reg[13] (.r (rst_n), .s (1'b1), .clk (clk), .d
       (addr[13]), .q (r_addr_del[13]), .qbar (UNCONNECTED3));
  dff$ \r_addr_del_reg[10] (.r (rst_n), .s (1'b1), .clk (clk), .d
       (addr[10]), .q (r_addr_del[10]), .qbar (UNCONNECTED4));
  inv1$ g467(.in (r_addr_del[12]), .out (n_3));
  dff$ \r_addr_del_reg[12] (.r (rst_n), .s (1'b1), .clk (clk), .d
       (addr[12]), .q (r_addr_del[12]), .qbar (UNCONNECTED5));
  dff$ \r_addr_del_reg[9] (.r (rst_n), .s (1'b1), .clk (clk), .d
       (addr[9]), .q (r_addr_del[9]), .qbar (UNCONNECTED6));
  dff$ \r_addr_del_reg[11] (.r (rst_n), .s (1'b1), .clk (clk), .d
       (addr[11]), .q (r_addr_del[11]), .qbar (UNCONNECTED7));
  dff$ \r_addr_del_reg[8] (.r (rst_n), .s (1'b1), .clk (clk), .d
       (addr[8]), .q (r_addr_del[8]), .qbar (UNCONNECTED8));
  inv1$ g472(.in (addr[11]), .out (n_2));
  inv1$ g473(.in (addr[6]), .out (n_1));
endmodule

module counter_CNT_LMT4_1(clk, rst_n, cond, done);
  input clk, rst_n, cond;
  output done;
  wire clk, rst_n, cond;
  wire done;
  wire [2:0] count;
  wire UNCONNECTED9, UNCONNECTED10, UNCONNECTED11, n_1, n_2, n_3, n_4,
       n_5;
  wire n_6, n_7, n_11;
  and3$ g32(.in0 (n_11), .in1 (n_7), .in2 (count[2]), .out (done));
  inv1$ g33(.in (count[0]), .out (n_11));
  inv1$ g34(.in (count[1]), .out (n_7));
  dff$ \count_reg[2] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_6), .q
       (count[2]), .qbar (UNCONNECTED9));
  dff$ \count_reg[1] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_5), .q
       (count[1]), .qbar (UNCONNECTED10));
  and2$ g47(.in0 (n_4), .in1 (cond), .out (n_6));
  and2$ g48(.in0 (n_3), .in1 (cond), .out (n_5));
  xnor2$ g49(.in0 (count[2]), .in1 (n_1), .out (n_4));
  dff$ \count_reg[0] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_2), .q
       (count[0]), .qbar (UNCONNECTED11));
  xor2$ g51(.in0 (count[0]), .in1 (count[1]), .out (n_3));
  and2$ g52(.in0 (n_11), .in1 (cond), .out (n_2));
  or2$ g53(.in0 (n_11), .in1 (n_7), .out (n_1));
endmodule

module counter_CNT_LMT3(clk, rst_n, cond, done);
  input clk, rst_n, cond;
  output done;
  wire clk, rst_n, cond;
  wire done;
  wire [2:0] count;
  wire UNCONNECTED12, UNCONNECTED13, UNCONNECTED14, n_1, n_2, n_3, n_4,
       n_5;
  wire n_6, n_7, n_11;
  nor3$ g42(.in0 (n_11), .in1 (n_7), .in2 (count[2]), .out (done));
  inv1$ g43(.in (count[0]), .out (n_11));
  inv1$ g44(.in (count[1]), .out (n_7));
  dff$ \count_reg[2] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_6), .q
       (count[2]), .qbar (UNCONNECTED12));
  dff$ \count_reg[1] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_5), .q
       (count[1]), .qbar (UNCONNECTED13));
  and2$ g96(.in0 (cond), .in1 (n_4), .out (n_6));
  and2$ g97(.in0 (cond), .in1 (n_3), .out (n_5));
  xnor2$ g98(.in0 (count[2]), .in1 (n_1), .out (n_4));
  dff$ \count_reg[0] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_2), .q
       (count[0]), .qbar (UNCONNECTED14));
  xor2$ g100(.in0 (count[0]), .in1 (count[1]), .out (n_3));
  and2$ g101(.in0 (cond), .in1 (n_11), .out (n_2));
  or2$ g102(.in0 (n_11), .in1 (n_7), .out (n_1));
endmodule

module counter_CNT_LMT2(clk, rst_n, cond, done);
  input clk, rst_n, cond;
  output done;
  wire clk, rst_n, cond;
  wire done;
  wire [2:0] count;
  wire UNCONNECTED15, UNCONNECTED16, UNCONNECTED17, n_2, n_3, n_4, n_5,
       n_6;
  wire n_7, n_8, n_12;
  nor3$ g29(.in0 (count[2]), .in1 (n_8), .in2 (count[0]), .out (done));
  inv1$ g30(.in (count[0]), .out (n_12));
  inv1$ g31(.in (count[1]), .out (n_8));
  dff$ \count_reg[2] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_7), .q
       (count[2]), .qbar (UNCONNECTED15));
  dff$ \count_reg[1] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_6), .q
       (count[1]), .qbar (UNCONNECTED16));
  and2$ g49(.in0 (n_5), .in1 (cond), .out (n_7));
  and2$ g50(.in0 (n_4), .in1 (cond), .out (n_6));
  xnor2$ g51(.in0 (n_3), .in1 (count[2]), .out (n_5));
  dff$ \count_reg[0] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_2), .q
       (count[0]), .qbar (UNCONNECTED17));
  xor2$ g53(.in0 (count[1]), .in1 (count[0]), .out (n_4));
  nand2$ g54(.in0 (count[1]), .in1 (count[0]), .out (n_3));
  and2$ g55(.in0 (n_12), .in1 (cond), .out (n_2));
endmodule

module counter_CNT_LMT4(clk, rst_n, cond, done);
  input clk, rst_n, cond;
  output done;
  wire clk, rst_n, cond;
  wire done;
  wire [2:0] count;
  wire UNCONNECTED18, UNCONNECTED19, UNCONNECTED20, n_1, n_2, n_3, n_4,
       n_5;
  wire n_6, n_7, n_11;
  and3$ g32(.in0 (n_11), .in1 (n_7), .in2 (count[2]), .out (done));
  inv1$ g33(.in (count[0]), .out (n_11));
  inv1$ g34(.in (count[1]), .out (n_7));
  dff$ \count_reg[2] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_6), .q
       (count[2]), .qbar (UNCONNECTED18));
  dff$ \count_reg[1] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_5), .q
       (count[1]), .qbar (UNCONNECTED19));
  and2$ g47(.in0 (n_4), .in1 (cond), .out (n_6));
  and2$ g48(.in0 (n_3), .in1 (cond), .out (n_5));
  xnor2$ g49(.in0 (count[2]), .in1 (n_1), .out (n_4));
  dff$ \count_reg[0] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_2), .q
       (count[0]), .qbar (UNCONNECTED20));
  xor2$ g51(.in0 (count[0]), .in1 (count[1]), .out (n_3));
  and2$ g52(.in0 (n_11), .in1 (cond), .out (n_2));
  or2$ g53(.in0 (n_11), .in1 (n_7), .out (n_1));
endmodule

module counter_CNT_LMT2_1(clk, rst_n, cond, done);
  input clk, rst_n, cond;
  output done;
  wire clk, rst_n, cond;
  wire done;
  wire [2:0] count;
  wire UNCONNECTED21, UNCONNECTED22, UNCONNECTED23, n_2, n_3, n_4, n_5,
       n_6;
  wire n_7, n_8, n_12;
  nor3$ g29(.in0 (count[2]), .in1 (n_8), .in2 (count[0]), .out (done));
  inv1$ g30(.in (count[0]), .out (n_12));
  inv1$ g31(.in (count[1]), .out (n_8));
  dff$ \count_reg[2] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_7), .q
       (count[2]), .qbar (UNCONNECTED21));
  dff$ \count_reg[1] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_6), .q
       (count[1]), .qbar (UNCONNECTED22));
  and2$ g49(.in0 (n_5), .in1 (cond), .out (n_7));
  and2$ g50(.in0 (n_4), .in1 (cond), .out (n_6));
  xnor2$ g51(.in0 (n_3), .in1 (count[2]), .out (n_5));
  dff$ \count_reg[0] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_2), .q
       (count[0]), .qbar (UNCONNECTED23));
  xor2$ g53(.in0 (count[1]), .in1 (count[0]), .out (n_4));
  nand2$ g54(.in0 (count[1]), .in1 (count[0]), .out (n_3));
  and2$ g55(.in0 (n_12), .in1 (cond), .out (n_2));
endmodule

module mem_fsm(clk, rst_n, cyc, we, addr, ack, ce, oe, wr, rd);
  input clk, rst_n, cyc, we;
  input [31:0] addr;
  output ack, ce, oe, wr, rd;
  wire clk, rst_n, cyc, we;
  wire [31:0] addr;
  wire ack, ce, oe, wr, rd;
  wire [3:0] curr_st;
  wire UNCONNECTED24, UNCONNECTED25, UNCONNECTED26, UNCONNECTED_HIER_Z,
       UNCONNECTED_HIER_Z0, UNCONNECTED_HIER_Z1, UNCONNECTED_HIER_Z2,
       UNCONNECTED_HIER_Z3;
  wire UNCONNECTED_HIER_Z4, UNCONNECTED_HIER_Z5, UNCONNECTED_HIER_Z6,
       UNCONNECTED_HIER_Z7, UNCONNECTED_HIER_Z8, UNCONNECTED_HIER_Z9,
       UNCONNECTED_HIER_Z10, UNCONNECTED_HIER_Z11;
  wire UNCONNECTED_HIER_Z12, UNCONNECTED_HIER_Z13,
       UNCONNECTED_HIER_Z14, UNCONNECTED_HIER_Z15,
       UNCONNECTED_HIER_Z16, UNCONNECTED_HIER_Z17,
       UNCONNECTED_HIER_Z18, UNCONNECTED_HIER_Z19;
  wire UNCONNECTED_HIER_Z20, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_31, n_32;
  wire n_33, n_34, n_35, n_36, n_37, n_38, n_39, n_40;
  wire n_41, n_42, n_43, n_44, n_45, n_46, n_47, n_48;
  wire n_49, n_50, n_51, n_52, n_53, n_54, n_55, n_60;
  wire n_62, n_63, n_64, n_65, n_66, n_67, n_69, n_70;
  wire n_71, n_78, n_113, w_addr_ch, w_cyc_574, w_rd_done, w_start,
       w_wr_done;
  wire w_wr_wait_2n_done, w_wr_wait_n_done;
  addr_ch_logic u_addr_ch_logic(.clk (clk), .rst_n (rst_n), .addr
       ({UNCONNECTED_HIER_Z20, UNCONNECTED_HIER_Z19,
       UNCONNECTED_HIER_Z18, UNCONNECTED_HIER_Z17,
       UNCONNECTED_HIER_Z16, UNCONNECTED_HIER_Z15,
       UNCONNECTED_HIER_Z14, UNCONNECTED_HIER_Z13,
       UNCONNECTED_HIER_Z12, UNCONNECTED_HIER_Z11,
       UNCONNECTED_HIER_Z10, UNCONNECTED_HIER_Z9, UNCONNECTED_HIER_Z8,
       UNCONNECTED_HIER_Z7, UNCONNECTED_HIER_Z6, UNCONNECTED_HIER_Z5,
       UNCONNECTED_HIER_Z4, addr[14:5], UNCONNECTED_HIER_Z3,
       UNCONNECTED_HIER_Z2, UNCONNECTED_HIER_Z1, UNCONNECTED_HIER_Z0,
       UNCONNECTED_HIER_Z}), .addr_ch (w_addr_ch));
  counter_CNT_LMT4_1 u_rd_done_gen(.clk (clk), .rst_n (rst_n), .cond
       (n_3), .done (w_rd_done));
  counter_CNT_LMT3 u_start_gen(.clk (clk), .rst_n (rst_n), .cond
       (n_78), .done (w_start));
  counter_CNT_LMT2 u_wr_done_gen(.clk (clk), .rst_n (rst_n), .cond
       (n_2), .done (w_wr_done));
  counter_CNT_LMT4 u_wr_wait_2n_done_gen(.clk (clk), .rst_n (rst_n),
       .cond (n_5), .done (w_wr_wait_2n_done));
  counter_CNT_LMT2_1 u_wr_wait_n_done_gen(.clk (clk), .rst_n (rst_n),
       .cond (n_60), .done (w_wr_wait_n_done));
  inv1$ g598(.in (n_113), .out (n_60));
  inv1$ g599(.in (n_67), .out (n_5));
  inv1$ g597(.in (w_cyc_574), .out (ce));
  inv1$ g600(.in (n_66), .out (n_3));
  inv1$ g601(.in (n_70), .out (n_2));
  nor2$ g1404(.in0 (n_55), .in1 (n_51), .out (ack));
  nand3$ g1405(.in0 (n_46), .in1 (n_54), .in2 (n_43), .out (n_55));
  nor4$ g1406(.in0 (n_27), .in1 (n_45), .in2 (n_53), .in3 (n_71), .out
       (n_78));
  nor3$ g1407(.in0 (addr[15]), .in1 (n_27), .in2 (n_50), .out (n_54));
  nor3$ g1408(.in0 (n_49), .in1 (n_47), .in2 (n_41), .out (w_cyc_574));
  nand3$ g1409(.in0 (n_48), .in1 (n_52), .in2 (n_46), .out (oe));
  nand4$ g1410(.in0 (n_46), .in1 (n_43), .in2 (n_44), .in3 (n_28), .out
       (n_53));
  inv1$ g1411(.in (n_51), .out (n_52));
  nand4$ g1412(.in0 (n_33), .in1 (n_32), .in2 (n_37), .in3 (n_36), .out
       (n_51));
  and2$ g1413(.in0 (n_69), .in1 (n_65), .out (n_50));
  and2$ g1414(.in0 (n_70), .in1 (n_69), .out (wr));
  and2$ g1415(.in0 (n_66), .in1 (n_65), .out (rd));
  nand4$ g1416(.in0 (n_28), .in1 (n_38), .in2 (n_29), .in3 (cyc), .out
       (n_49));
  nor2$ g1417(.in0 (n_42), .in1 (n_40), .out (n_48));
  nand4$ g1418(.in0 (n_37), .in1 (n_32), .in2 (n_31), .in3 (n_33), .out
       (n_47));
  nor4$ g1420(.in0 (addr[21]), .in1 (addr[22]), .in2 (addr[23]), .in3
       (addr[20]), .out (n_46));
  nand3$ g1421(.in0 (curr_st[0]), .in1 (curr_st[2]), .in2 (curr_st[1]),
       .out (n_65));
  nand2$ g1422(.in0 (n_34), .in1 (curr_st[2]), .out (n_69));
  nand2$ g1423(.in0 (n_33), .in1 (n_36), .out (n_45));
  and2$ g1424(.in0 (n_37), .in1 (n_32), .out (n_44));
  nor4$ g1425(.in0 (addr[29]), .in1 (addr[30]), .in2 (addr[31]), .in3
       (addr[28]), .out (n_43));
  nand2$ g1426(.in0 (n_38), .in1 (n_31), .out (n_42));
  nand2$ g1427(.in0 (n_39), .in1 (n_64), .out (n_70));
  nand2$ g1428(.in0 (n_39), .in1 (curr_st[2]), .out (n_66));
  nand2$ g1429(.in0 (n_34), .in1 (n_64), .out (n_71));
  nand2$ g1430(.in0 (n_35), .in1 (n_36), .out (n_41));
  nand3$ g1431(.in0 (curr_st[2]), .in1 (n_63), .in2 (curr_st[1]), .out
       (n_67));
  nand3$ g1432(.in0 (n_62), .in1 (n_28), .in2 (cyc), .out (n_40));
  nor2$ g1433(.in0 (n_63), .in1 (curr_st[1]), .out (n_39));
  nor2$ g1434(.in0 (addr[31]), .in1 (addr[30]), .out (n_38));
  nor2$ g1435(.in0 (addr[27]), .in1 (addr[26]), .out (n_37));
  nor2$ g1436(.in0 (addr[17]), .in1 (addr[16]), .out (n_36));
  nor2$ g1437(.in0 (addr[23]), .in1 (addr[22]), .out (n_35));
  nor2$ g1439(.in0 (addr[21]), .in1 (addr[20]), .out (n_29));
  nor2$ g1440(.in0 (curr_st[0]), .in1 (curr_st[1]), .out (n_34));
  nor2$ g1441(.in0 (addr[19]), .in1 (addr[18]), .out (n_33));
  nor2$ g1442(.in0 (addr[25]), .in1 (addr[24]), .out (n_32));
  nor2$ g1443(.in0 (addr[29]), .in1 (addr[28]), .out (n_31));
  inv1$ g1444(.in (addr[15]), .out (n_28));
  inv1$ g1445(.in (curr_st[2]), .out (n_64));
  inv1$ g1446(.in (we), .out (n_62));
  inv1$ g1447(.in (curr_st[0]), .out (n_63));
  inv1$ g1448(.in (cyc), .out (n_27));
  dff$ \curr_st_reg[0] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_26),
       .q (curr_st[0]), .qbar (UNCONNECTED24));
  dff$ \curr_st_reg[2] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_25),
       .q (curr_st[2]), .qbar (UNCONNECTED25));
  dff$ \curr_st_reg[1] (.r (rst_n), .s (1'b1), .clk (clk), .d (n_24),
       .q (curr_st[1]), .qbar (UNCONNECTED26));
  nand4$ g974(.in0 (n_22), .in1 (n_10), .in2 (n_15), .in3 (n_18), .out
       (n_26));
  nand4$ g975(.in0 (n_23), .in1 (n_16), .in2 (n_15), .in3 (n_12), .out
       (n_25));
  nand2$ g976(.in0 (n_16), .in1 (n_21), .out (n_24));
  nand2$ g977(.in0 (n_20), .in1 (w_addr_ch), .out (n_23));
  nand2$ g978(.in0 (n_20), .in1 (n_4), .out (n_22));
  and4$ g979(.in0 (n_11), .in1 (n_6), .in2 (n_19), .in3 (n_69), .out
       (n_21));
  inv1$ g980(.in (n_19), .out (n_20));
  nand2$ g981(.in0 (w_cyc_574), .in1 (n_17), .out (n_19));
  and4$ g982(.in0 (n_13), .in1 (n_9), .in2 (n_14), .in3 (n_113), .out
       (n_18));
  and4$ g983(.in0 (n_64), .in1 (curr_st[1]), .in2 (we), .in3 (n_63),
       .out (n_17));
  and2$ g984(.in0 (n_10), .in1 (n_8), .out (n_16));
  and2$ g985(.in0 (n_7), .in1 (n_66), .out (n_15));
  or3$ g986(.in0 (n_1), .in1 (n_62), .in2 (n_71), .out (n_14));
  nand2$ g987(.in0 (w_wr_wait_2n_done), .in1 (n_5), .out (n_13));
  nand2$ g988(.in0 (w_wr_done), .in1 (n_2), .out (n_12));
  nand2$ g989(.in0 (w_rd_done), .in1 (n_3), .out (n_11));
  or2$ g990(.in0 (oe), .in1 (n_65), .out (n_10));
  or2$ g991(.in0 (w_wr_done), .in1 (n_70), .out (n_9));
  or2$ g992(.in0 (w_wr_wait_2n_done), .in1 (n_67), .out (n_8));
  or2$ g993(.in0 (oe), .in1 (n_71), .out (n_7));
  or2$ g994(.in0 (w_wr_wait_n_done), .in1 (n_113), .out (n_6));
  inv1$ g996(.in (w_addr_ch), .out (n_4));
  inv1$ g999(.in (w_start), .out (n_1));
  nand3$ g2(.in0 (curr_st[0]), .in1 (curr_st[1]), .in2 (n_64), .out
       (n_113));
endmodule

