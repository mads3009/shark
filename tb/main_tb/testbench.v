/********************************************************/
/*************** Microarchiture Project******************/
/********************************************************/
/* Module: Top level testbench for SoC                  */
/********************************************************/

module testbench;

// Parameters

parameter ADDR_DMA_REG_DISK_ADDR = 32'h8000_0000;
parameter ADDR_DMA_REG_MEM_ADDR  = 32'h8000_0004;
parameter ADDR_DMA_REG_T_SIZE    = 32'h8000_0008;
parameter ADDR_DMA_REG_INIT_TRAN = 32'h8000_000C;

parameter ADDR_KEY_REG_POL_STAT = 32'hC000_0000;
parameter ADDR_KEY_REG_KEY_VAL  = 32'hC000_0004;

parameter ADDR_MAIN_MEM_MIN = 32'h0000_0000;
parameter ADDR_MAIN_MEM_MAX = 32'h0000_7FFF;

//system ports
reg         clk;
reg         rst_n;

integer i,j,k;

initial begin
/*
  force u_system.u_cpu.u_i_cache.ts.ts_lower.WR = 1'b1;
  force u_system.u_cpu.u_i_cache.ts.ts_upper.WR = 1'b1;

  force testbench.u_system.u_cpu.u_i_cache.ds.lower_ram.WR = 1'b1;
  force testbench.u_system.u_cpu.u_i_cache.ds.upper_ram.WR = 1'b1;

  force u_system.u_cpu.u_dcache.u_dc_tag_store.row_gen[0].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_tag_store.row_gen[1].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_tag_store.row_gen[2].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_tag_store.row_gen[3].u_ram8b8w$.WR = 1'b1;

  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[0].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[1].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[2].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[3].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[4].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[5].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[6].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[7].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[8].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[9].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[10].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[11].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[12].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[13].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[14].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[15].u_ram8b8w$.WR = 1'b1;

  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[0].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[1].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[2].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[3].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[4].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[5].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[6].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[7].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[8].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[9].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[10].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[11].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[12].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[13].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[14].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[15].u_ram8b8w$.WR = 1'b1;

  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[0].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[1].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[2].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[3].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[4].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[5].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[6].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[7].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[8].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[9].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[10].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[11].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[12].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[13].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[14].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[15].u_ram8b8w$.WR = 1'b1;

  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[0].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[1].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[2].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[3].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[4].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[5].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[6].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[7].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[8].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[9].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[10].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[11].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[12].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[13].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[14].u_ram8b8w$.WR = 1'b1;
  force u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[15].u_ram8b8w$.WR = 1'b1;
*/
  clk = 1'b1;
  rst_n = 1'b0;
  #100;
/*
  release u_system.u_cpu.u_i_cache.ts.ts_lower.WR;
  release u_system.u_cpu.u_i_cache.ts.ts_upper.WR;

  release u_system.u_cpu.u_i_cache.ds.lower_ram.WR;
  release u_system.u_cpu.u_i_cache.ds.upper_ram.WR;

  release u_system.u_cpu.u_dcache.u_dc_tag_store.row_gen[0].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_tag_store.row_gen[1].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_tag_store.row_gen[2].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_tag_store.row_gen[3].u_ram8b8w$.WR;

  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[0].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[1].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[2].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[3].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[4].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[5].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[6].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[7].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[8].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[9].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[10].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[11].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[12].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[13].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[14].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[0].col_gen[15].u_ram8b8w$.WR;

  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[0].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[1].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[2].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[3].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[4].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[5].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[6].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[7].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[8].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[9].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[10].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[11].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[12].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[13].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[14].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[1].col_gen[15].u_ram8b8w$.WR;

  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[0].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[1].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[2].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[3].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[4].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[5].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[6].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[7].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[8].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[9].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[10].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[11].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[12].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[13].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[14].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[2].col_gen[15].u_ram8b8w$.WR;

  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[0].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[1].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[2].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[3].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[4].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[5].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[6].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[7].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[8].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[9].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[10].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[11].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[12].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[13].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[14].u_ram8b8w$.WR;
  release u_system.u_cpu.u_dcache.u_dc_data_store.row_gen[3].col_gen[15].u_ram8b8w$.WR;
*/
  rst_n = 1'b1;

  #16000;

  $display("");
  $finish;
end

/////////////////////////////////////
// Clock generation
/////////////////////////////////////

always #5 clk <= ~clk;

//Instantiate the system
system u_system(
  .clk    (clk),
  .rst_n  (rst_n)
);


initial
begin
  $vcdplusfile("tb.vpd");
  $vcdplusmemon();
  $vcdpluson();
end 

wire [3:0] ld_reg1_strb;
wire [3:0] ld_reg2_strb;
wire [3:0] ld_reg3_strb;
wire [2:0] dreg1;
wire [2:0] dreg2;
wire [2:0] dreg3;
wire [2:0] dmm;
wire [2:0] dseg;

assign V_wb = u_system.u_cpu.r_V_wb;
assign ld_mm = u_system.u_cpu.w_v_wb_ld_mm;
assign ld_mem = u_system.u_cpu.w_v_wb_ld_mem;
assign ld_reg1 = testbench.u_system.u_cpu.w_v_wb_ld_reg1;
assign ld_reg2 = testbench.u_system.u_cpu.w_v_wb_ld_reg2;
assign ld_reg3 = testbench.u_system.u_cpu.w_v_wb_ld_reg3;
assign ld_reg1_strb = testbench.u_system.u_cpu.w_v_wb_ld_reg1_strb;
assign ld_reg2_strb = testbench.u_system.u_cpu.w_v_wb_ld_reg2_strb;
assign ld_reg3_strb = testbench.u_system.u_cpu.w_v_wb_ld_reg3_strb;
assign ld_seg = testbench.u_system.u_cpu.w_v_wb_ld_seg;
assign ld_CF = testbench.u_system.u_cpu.w_v_wb_ld_flag_CF;
assign ld_ZF = testbench.u_system.u_cpu.w_v_wb_ld_flag_ZF;
assign ld_OF = testbench.u_system.u_cpu.w_v_wb_ld_flag_OF;
assign ld_SF = testbench.u_system.u_cpu.w_v_wb_ld_flag_SF;
assign ld_PF = testbench.u_system.u_cpu.w_v_wb_ld_flag_PF;
assign ld_AF = testbench.u_system.u_cpu.w_v_wb_ld_flag_AF;
assign ld_DF = testbench.u_system.u_cpu.w_v_wb_ld_flag_DF;

assign dreg1 = testbench.u_system.u_cpu.r_wb_dreg1;
assign dreg2 = testbench.u_system.u_cpu.r_wb_dreg2;
assign dreg3 = testbench.u_system.u_cpu.r_wb_dreg3;
assign dmm = testbench.u_system.u_cpu.r_wb_dmm;
assign dseg = testbench.u_system.u_cpu.r_wb_dseg;

//Logging the test
always @(u_system.EAX,u_system.ECX,u_system.EDX,u_system.EBX,u_system.ESP,u_system.EBP,u_system.ESI,u_system.EDI) begin
  $display("Registers: EAX:%8h  ECX:%8h  EDX:%8h  EBX:%8h  ESP:%8h  EBP:%8h  ESI:%8h  EDI:%8h  ", u_system.EAX,  u_system.ECX,  u_system.EDX,  u_system.EBX,  u_system.ESP,  u_system.EBP,  u_system.ESI,  u_system.EDI); 
end

always @(ld_CF , ld_PF , ld_AF , ld_ZF , ld_SF , ld_OF , ld_DF) begin
    $display("Flags: CF=%b  PF=%b  AF=%b  ZF=%b  SF=%b  OF=%b  DF=%b", u_system.CF, u_system.PF, u_system.AF, u_system.ZF, u_system.SF, u_system.OF, u_system.DF);
end

always @(u_system.MM0 , u_system.MM1 , u_system.MM2 , u_system.MM3 , u_system.MM4 , u_system.MM5 , u_system.MM6 , u_system.MM7)
    $display("MMX regs: MM0=%h  MM1=%h  MMX2=%h  MM3=%h  MM4=%h  MM5=%h  MM6=%h  MM7=%h  ",u_system.MM0, u_system.MM1, u_system.MM2, u_system.MM3, u_system.MM4, u_system.MM5, u_system.MM6, u_system.MM7 );

always @(u_system.ES , u_system.CS , u_system.SS , u_system.DS , u_system.FS ,u_system.GS)
    $display("Segments: ES=%h  CS=%h  SS=%h  DS=%h  FS=%h  GS=%h ", u_system.ES, u_system.CS, u_system.SS, u_system.DS, u_system.FS, u_system.GS);

//DCACHE
genvar g;
generate begin : get_dcache
  for (g=0; g<32; g=g+1) begin : dcache
    always @(u_system.dcache[g]) begin
      $display("Dcache %d : %h",g,u_system.dcache[g]);
    end    
  end 
end
endgenerate

//ICACHE
generate begin : get_icache
  for (g=0; g<16; g=g+1) begin : icache
    always @(u_system.icache[g]) begin
      $display("Icache %d : %h %h %h %h",g, u_system.icache[g][32*8-1:24*8] , u_system.icache[g][24*8-1:16*8] , u_system.icache[g][16*8-1:8*8] , u_system.icache[g][8*8-1:0]);
    end    
  end 
end
endgenerate

//Main memory
generate
  for (g=0; g < 1024; g=g+1) begin : mainmem
      always @(u_system.main_mem_page0[g])
        $display("Frame0[%h] : %h",g,u_system.main_mem_page0[g]);
      always @(u_system.main_mem_page1[g])
        $display("Frame1[%h] : %h",g,u_system.main_mem_page1[g]);
      always @(u_system.main_mem_page2[g])
        $display("Frame2[%h] : %h",g,u_system.main_mem_page2[g]);
      always @(u_system.main_mem_page3[g])
        $display("Frame3[%h] : %h",g,u_system.main_mem_page3[g]);
      always @(u_system.main_mem_page4[g])
        $display("Frame4[%h] : %h",g,u_system.main_mem_page4[g]);
      always @(u_system.main_mem_page5[g])
        $display("Frame5[%h] : %h",g,u_system.main_mem_page5[g]);
      always @(u_system.main_mem_page6[g])
        $display("Frame6[%h] : %h",g,u_system.main_mem_page6[g]);
      always @(u_system.main_mem_page7[g])
        $display("Frame7[%h] : %h",g,u_system.main_mem_page7[g]);
    end
endgenerate


/*
initial begin
    $monitor("Dcache[ 0] : %h", u_system.dcache[ 0]);
    $monitor("Dcache[ 1] : %h", u_system.dcache[ 1]);
    $monitor("Dcache[ 2] : %h", u_system.dcache[ 2]);
    $monitor("Dcache[ 3] : %h", u_system.dcache[ 3]);
    $monitor("Dcache[ 4] : %h", u_system.dcache[ 4]);
    $monitor("Dcache[ 5] : %h", u_system.dcache[ 5]);
    $monitor("Dcache[ 6] : %h", u_system.dcache[ 6]);
    $monitor("Dcache[ 7] : %h", u_system.dcache[ 7]);
    $monitor("Dcache[ 8] : %h", u_system.dcache[ 8]);
    $monitor("Dcache[ 9] : %h", u_system.dcache[ 9]);
    $monitor("Dcache[10] : %h", u_system.dcache[10]);
    $monitor("Dcache[11] : %h", u_system.dcache[11]);
    $monitor("Dcache[12] : %h", u_system.dcache[12]);
    $monitor("Dcache[13] : %h", u_system.dcache[13]);
    $monitor("Dcache[14] : %h", u_system.dcache[14]);
    $monitor("Dcache[15] : %h", u_system.dcache[15]);
    $monitor("Dcache[16] : %h", u_system.dcache[16]);
    $monitor("Dcache[17] : %h", u_system.dcache[17]);
    $monitor("Dcache[18] : %h", u_system.dcache[18]);
    $monitor("Dcache[19] : %h", u_system.dcache[19]);
    $monitor("Dcache[20] : %h", u_system.dcache[20]);
    $monitor("Dcache[21] : %h", u_system.dcache[21]);
    $monitor("Dcache[22] : %h", u_system.dcache[22]);
    $monitor("Dcache[23] : %h", u_system.dcache[23]);
    $monitor("Dcache[24] : %h", u_system.dcache[24]);
    $monitor("Dcache[25] : %h", u_system.dcache[25]);
    $monitor("Dcache[26] : %h", u_system.dcache[26]);
    $monitor("Dcache[27] : %h", u_system.dcache[27]);
    $monitor("Dcache[28] : %h", u_system.dcache[28]);
    $monitor("Dcache[29] : %h", u_system.dcache[29]);
    $monitor("Dcache[30] : %h", u_system.dcache[30]);
    $monitor("Dcache[31] : %h", u_system.dcache[31]);
end                  
*/
                     
always @(posedge clk) begin
 if(V_wb == 1'b1) begin
    $display("\nOpcode= 0x%h",  u_system.u_cpu.r_wb_opcode);

    //Printing registers
    if(ld_reg1 == 1'b1 && ld_reg2 == 1'b1 && ld_reg3 == 1'b1)
      $display("Reg1 strbs:%b  (%d) Reg2 strbs:%b (%d) Reg3 strbs:%b (%d)", ld_reg1_strb, dreg1, ld_reg2_strb, dreg2, ld_reg3_strb, dreg3); 
    else if(ld_reg1 == 1'b1 && ld_reg2 == 1'b1)
      $display("Reg1 strbs:%b  (%d) Reg2 strbs:%b (%d)", ld_reg1_strb, dreg1, ld_reg2_strb, dreg2); 
    else if(ld_reg1 == 1'b1 && ld_reg3 == 1'b1)
      $display("Reg1 strbs:%b  (%d) Reg3 strbs:%b (%d)", ld_reg1_strb, dreg1, ld_reg3_strb, dreg3); 
    else if(ld_reg2 == 1'b1 && ld_reg3 == 1'b1)
      $display("Reg2 strbs:%b  (%d) Reg3 strbs:%b (%d)", ld_reg2_strb, dreg2, ld_reg3_strb, dreg3); 
    else if(ld_reg1 == 1'b1)
      $display("Reg1 strbs: %b (%d)", ld_reg1_strb, dreg1); 
    else if(ld_reg2 == 1'b1)
      $display("Reg2 strbs: %b (%d)", ld_reg2_strb, dreg2); 
    else if(ld_reg3 == 1'b1)
      $display("Reg3 strbs: %b (%d)", ld_reg3_strb, dreg3); 
 
    //Printing EFLAGS
    if(ld_CF || ld_PF || ld_AF || ld_ZF || ld_SF || ld_OF || ld_DF)
    $display("Load Flags: (%b) ", {ld_CF,ld_PF,ld_AF,ld_ZF,ld_SF,ld_OF,ld_DF});

    //Printing MM
    if(ld_mm)
    $display("Load MMX regs: (%d) ", dmm);

    //Printing SEG
    if(ld_seg)
    $display("Load Segments: (%d) ", dseg);
    
    if(ld_mem)
    $display("Load Memory: (%h):%h size:%d", u_system.u_cpu.r_wb_mem_wr_addr, u_system.u_cpu.w_wb_mem_wr_data, u_system.u_cpu.r_wb_mem_wr_size);

  end
end


// Initialize i-cache and d-cache tag stores
initial begin
  for (i=0;i<8;i=i+1)  begin
    u_system.u_cpu.u_i_cache.ts.ts_lower.mem[i] = 8'h00;
    u_system.u_cpu.u_i_cache.ts.ts_upper.mem[i] = 8'h00;
  end
  for (i=0;i<8;i=i+1)  begin
    u_system.u_cpu.u_dcache.u_dc_tag_store.row_gen[0].u_ram8b8w$.mem[i] = 8'h00;
    u_system.u_cpu.u_dcache.u_dc_tag_store.row_gen[1].u_ram8b8w$.mem[i] = 8'h00;
    u_system.u_cpu.u_dcache.u_dc_tag_store.row_gen[2].u_ram8b8w$.mem[i] = 8'h00;
    u_system.u_cpu.u_dcache.u_dc_tag_store.row_gen[3].u_ram8b8w$.mem[i] = 8'h00;
  end
end

/*
//Initialize registers to some non zero values
initial begin
  u_system.u_cpu.u_regfile.loop2[0].u_reg0.data[7:0] = 8'h1;
  u_system.u_cpu.u_regfile.loop2[1].u_reg0.data[7:0] = 8'h1;
  u_system.u_cpu.u_regfile.loop2[2].u_reg0.data[7:0] = 8'h1;
  u_system.u_cpu.u_regfile.loop2[3].u_reg0.data[7:0] = 8'h1;
  u_system.u_cpu.u_regfile.loop2[4].u_reg0.data[7:0] = 8'h1;
  u_system.u_cpu.u_regfile.loop2[5].u_reg0.data[7:0] = 8'h1;
  u_system.u_cpu.u_regfile.loop2[6].u_reg0.data[7:0] = 8'h1;
  u_system.u_cpu.u_regfile.loop2[7].u_reg0.data[7:0] = 8'h1;
  u_system.u_cpu.u_regfile.loop2[0].u_reg1.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[1].u_reg1.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[2].u_reg1.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[3].u_reg1.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[4].u_reg1.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[5].u_reg1.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[6].u_reg1.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[7].u_reg1.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[0].u_reg2.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[1].u_reg2.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[2].u_reg2.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[3].u_reg2.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[4].u_reg2.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[5].u_reg2.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[6].u_reg2.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[7].u_reg2.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[0].u_reg3.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[1].u_reg3.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[2].u_reg3.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[3].u_reg3.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[4].u_reg3.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[5].u_reg3.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[6].u_reg3.data[7:0] = 8'h0;
  u_system.u_cpu.u_regfile.loop2[7].u_reg3.data[7:0] = 8'h0;

  u_system.u_cpu.u_regfile.loop2[0].u_reg0.gen_reg[0].u_reg = 1'b1;
  u_system.u_cpu.u_regfile.loop2[1].u_reg0.gen_reg[0].u_reg = 1'b1;
  u_system.u_cpu.u_regfile.loop2[2].u_reg0.gen_reg[0].u_reg = 1'b1;
  u_system.u_cpu.u_regfile.loop2[3].u_reg0.gen_reg[0].u_reg = 1'b1;
  u_system.u_cpu.u_regfile.loop2[4].u_reg0.gen_reg[0].u_reg = 1'b1;
  u_system.u_cpu.u_regfile.loop2[5].u_reg0.gen_reg[0].u_reg = 1'b1;
  u_system.u_cpu.u_regfile.loop2[6].u_reg0.gen_reg[0].u_reg = 1'b1;
  u_system.u_cpu.u_regfile.loop2[7].u_reg0.gen_reg[0].u_reg = 1'b1;
end
*/

// Initialize TLB and segment limit registers
initial begin
  u_system.u_cpu.TLB[0] = 44'h0000000000c;
  u_system.u_cpu.TLB[1] = 44'h0200000002e;
  u_system.u_cpu.TLB[2] = 44'h0400000005e;
  u_system.u_cpu.TLB[3] = 44'h0b00000004e;
  u_system.u_cpu.TLB[4] = 44'h0c00000007e;
  u_system.u_cpu.TLB[5] = 44'h0a00000005e;
  u_system.u_cpu.TLB[6] = 44'h8000000000f;
  u_system.u_cpu.TLB[7] = 44'hC000000000f;
  
  u_system.u_cpu.u_dcache.u_tlb.r_tlb_mem[0] = 44'h0000000000c;
  u_system.u_cpu.u_dcache.u_tlb.r_tlb_mem[1] = 44'h0200000002e;
  u_system.u_cpu.u_dcache.u_tlb.r_tlb_mem[2] = 44'h0400000005e;
  u_system.u_cpu.u_dcache.u_tlb.r_tlb_mem[3] = 44'h0b00000004e;
  u_system.u_cpu.u_dcache.u_tlb.r_tlb_mem[4] = 44'h0c00000007e;
  u_system.u_cpu.u_dcache.u_tlb.r_tlb_mem[5] = 44'h0a00000005e;
  u_system.u_cpu.u_dcache.u_tlb.r_tlb_mem[6] = 44'h8000000000f;
  u_system.u_cpu.u_dcache.u_tlb.r_tlb_mem[7] = 44'hC000000000f;

  u_system.u_cpu.u_dc_exp_checker.u_tlb.r_tlb_mem[0] = 44'h0000000000c;
  u_system.u_cpu.u_dc_exp_checker.u_tlb.r_tlb_mem[1] = 44'h0200000002e;
  u_system.u_cpu.u_dc_exp_checker.u_tlb.r_tlb_mem[2] = 44'h0400000005e;
  u_system.u_cpu.u_dc_exp_checker.u_tlb.r_tlb_mem[3] = 44'h0b00000004e;
  u_system.u_cpu.u_dc_exp_checker.u_tlb.r_tlb_mem[4] = 44'h0c00000007e;
  u_system.u_cpu.u_dc_exp_checker.u_tlb.r_tlb_mem[5] = 44'h0a00000005e;
  u_system.u_cpu.u_dc_exp_checker.u_tlb.r_tlb_mem[6] = 44'h8000000000f;
  u_system.u_cpu.u_dc_exp_checker.u_tlb.r_tlb_mem[7] = 44'hC000000000f;

  u_system.u_cpu.CS_limit = 20'h04fff;
  u_system.u_cpu.DS_limit = 20'h011ff;
  u_system.u_cpu.SS_limit = 20'h04000;
  u_system.u_cpu.ES_limit = 20'h003ff;
  u_system.u_cpu.FS_limit = 20'h003ff;
  u_system.u_cpu.GS_limit = 20'h007ff;

end

//Initialize memory
reg [15:0] init_num_lines[1:0];
reg [15:0] init_mem_addr[(2**15)-1:0];
reg [7:0]  init_mem_data[(2**15)-1:0];
reg [2:0]  chip_arr_row;
reg [2:0]  chip_arr_col;
reg [1:0]  chip_byte_idx;
reg [6:0]  chip_line_addr;
reg [15:0] chip_addr;

reg [7:0] data0[(2**12)-1:0];

reg [63:0] oprom_data0[255:0];
reg [63:0] oprom_data1[255:0];

reg [63:0] subrom_data0 [255:0];
reg [48:0] subrom_data1 [255:0];

reg [31:0] modrom_data [31:0];
reg [63:0] int_exp_data0 [7:0];
reg [63:0] int_exp_data1 [7:0];
reg [63:0] int_exp_data2 [7:0];


initial begin
    $readmemh("../../scripts/hex_data0.txt",data0);
    for (k=0; k < 128; k=k+1) begin : line_gen0
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[0].u_sram128x8_1.mem[k] = data0[k*32+(4*0)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[0].u_sram128x8_2.mem[k] = data0[k*32+(4*0)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[0].u_sram128x8_3.mem[k] = data0[k*32+(4*0)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[0].u_sram128x8_4.mem[k] = data0[k*32+(4*0)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[1].u_sram128x8_1.mem[k] = data0[k*32+(4*1)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[1].u_sram128x8_2.mem[k] = data0[k*32+(4*1)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[1].u_sram128x8_3.mem[k] = data0[k*32+(4*1)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[1].u_sram128x8_4.mem[k] = data0[k*32+(4*1)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[2].u_sram128x8_1.mem[k] = data0[k*32+(4*2)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[2].u_sram128x8_2.mem[k] = data0[k*32+(4*2)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[2].u_sram128x8_3.mem[k] = data0[k*32+(4*2)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[2].u_sram128x8_4.mem[k] = data0[k*32+(4*2)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[3].u_sram128x8_1.mem[k] = data0[k*32+(4*3)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[3].u_sram128x8_2.mem[k] = data0[k*32+(4*3)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[3].u_sram128x8_3.mem[k] = data0[k*32+(4*3)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[3].u_sram128x8_4.mem[k] = data0[k*32+(4*3)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[4].u_sram128x8_1.mem[k] = data0[k*32+(4*4)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[4].u_sram128x8_2.mem[k] = data0[k*32+(4*4)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[4].u_sram128x8_3.mem[k] = data0[k*32+(4*4)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[4].u_sram128x8_4.mem[k] = data0[k*32+(4*4)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[5].u_sram128x8_1.mem[k] = data0[k*32+(4*5)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[5].u_sram128x8_2.mem[k] = data0[k*32+(4*5)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[5].u_sram128x8_3.mem[k] = data0[k*32+(4*5)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[5].u_sram128x8_4.mem[k] = data0[k*32+(4*5)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[6].u_sram128x8_1.mem[k] = data0[k*32+(4*6)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[6].u_sram128x8_2.mem[k] = data0[k*32+(4*6)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[6].u_sram128x8_3.mem[k] = data0[k*32+(4*6)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[6].u_sram128x8_4.mem[k] = data0[k*32+(4*6)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[7].u_sram128x8_1.mem[k] = data0[k*32+(4*7)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[7].u_sram128x8_2.mem[k] = data0[k*32+(4*7)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[7].u_sram128x8_3.mem[k] = data0[k*32+(4*7)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[0].col_gen[7].u_sram128x8_4.mem[k] = data0[k*32+(4*7)+3];
    end

    $readmemh("../../scripts/hex_data1.txt",data0);
    for (k=0; k < 128; k=k+1) begin : line_gen1
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[0].u_sram128x8_1.mem[k] = data0[k*32+(4*0)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[0].u_sram128x8_2.mem[k] = data0[k*32+(4*0)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[0].u_sram128x8_3.mem[k] = data0[k*32+(4*0)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[0].u_sram128x8_4.mem[k] = data0[k*32+(4*0)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[1].u_sram128x8_1.mem[k] = data0[k*32+(4*1)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[1].u_sram128x8_2.mem[k] = data0[k*32+(4*1)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[1].u_sram128x8_3.mem[k] = data0[k*32+(4*1)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[1].u_sram128x8_4.mem[k] = data0[k*32+(4*1)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[2].u_sram128x8_1.mem[k] = data0[k*32+(4*2)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[2].u_sram128x8_2.mem[k] = data0[k*32+(4*2)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[2].u_sram128x8_3.mem[k] = data0[k*32+(4*2)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[2].u_sram128x8_4.mem[k] = data0[k*32+(4*2)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[3].u_sram128x8_1.mem[k] = data0[k*32+(4*3)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[3].u_sram128x8_2.mem[k] = data0[k*32+(4*3)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[3].u_sram128x8_3.mem[k] = data0[k*32+(4*3)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[3].u_sram128x8_4.mem[k] = data0[k*32+(4*3)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[4].u_sram128x8_1.mem[k] = data0[k*32+(4*4)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[4].u_sram128x8_2.mem[k] = data0[k*32+(4*4)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[4].u_sram128x8_3.mem[k] = data0[k*32+(4*4)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[4].u_sram128x8_4.mem[k] = data0[k*32+(4*4)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[5].u_sram128x8_1.mem[k] = data0[k*32+(4*5)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[5].u_sram128x8_2.mem[k] = data0[k*32+(4*5)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[5].u_sram128x8_3.mem[k] = data0[k*32+(4*5)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[5].u_sram128x8_4.mem[k] = data0[k*32+(4*5)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[6].u_sram128x8_1.mem[k] = data0[k*32+(4*6)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[6].u_sram128x8_2.mem[k] = data0[k*32+(4*6)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[6].u_sram128x8_3.mem[k] = data0[k*32+(4*6)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[6].u_sram128x8_4.mem[k] = data0[k*32+(4*6)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[7].u_sram128x8_1.mem[k] = data0[k*32+(4*7)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[7].u_sram128x8_2.mem[k] = data0[k*32+(4*7)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[7].u_sram128x8_3.mem[k] = data0[k*32+(4*7)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[1].col_gen[7].u_sram128x8_4.mem[k] = data0[k*32+(4*7)+3];
    end

    $readmemh("../../scripts/hex_data2.txt",data0);
    for (k=0; k < 128; k=k+1) begin : line_gen2
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[0].u_sram128x8_1.mem[k] = data0[k*32+(4*0)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[0].u_sram128x8_2.mem[k] = data0[k*32+(4*0)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[0].u_sram128x8_3.mem[k] = data0[k*32+(4*0)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[0].u_sram128x8_4.mem[k] = data0[k*32+(4*0)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[1].u_sram128x8_1.mem[k] = data0[k*32+(4*1)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[1].u_sram128x8_2.mem[k] = data0[k*32+(4*1)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[1].u_sram128x8_3.mem[k] = data0[k*32+(4*1)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[1].u_sram128x8_4.mem[k] = data0[k*32+(4*1)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[2].u_sram128x8_1.mem[k] = data0[k*32+(4*2)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[2].u_sram128x8_2.mem[k] = data0[k*32+(4*2)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[2].u_sram128x8_3.mem[k] = data0[k*32+(4*2)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[2].u_sram128x8_4.mem[k] = data0[k*32+(4*2)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[3].u_sram128x8_1.mem[k] = data0[k*32+(4*3)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[3].u_sram128x8_2.mem[k] = data0[k*32+(4*3)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[3].u_sram128x8_3.mem[k] = data0[k*32+(4*3)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[3].u_sram128x8_4.mem[k] = data0[k*32+(4*3)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[4].u_sram128x8_1.mem[k] = data0[k*32+(4*4)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[4].u_sram128x8_2.mem[k] = data0[k*32+(4*4)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[4].u_sram128x8_3.mem[k] = data0[k*32+(4*4)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[4].u_sram128x8_4.mem[k] = data0[k*32+(4*4)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[5].u_sram128x8_1.mem[k] = data0[k*32+(4*5)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[5].u_sram128x8_2.mem[k] = data0[k*32+(4*5)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[5].u_sram128x8_3.mem[k] = data0[k*32+(4*5)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[5].u_sram128x8_4.mem[k] = data0[k*32+(4*5)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[6].u_sram128x8_1.mem[k] = data0[k*32+(4*6)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[6].u_sram128x8_2.mem[k] = data0[k*32+(4*6)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[6].u_sram128x8_3.mem[k] = data0[k*32+(4*6)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[6].u_sram128x8_4.mem[k] = data0[k*32+(4*6)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[7].u_sram128x8_1.mem[k] = data0[k*32+(4*7)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[7].u_sram128x8_2.mem[k] = data0[k*32+(4*7)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[7].u_sram128x8_3.mem[k] = data0[k*32+(4*7)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[2].col_gen[7].u_sram128x8_4.mem[k] = data0[k*32+(4*7)+3];
    end

    $readmemh("../../scripts/hex_data3.txt",data0);
    for (k=0; k < 128; k=k+1) begin : line_gen3
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[0].u_sram128x8_1.mem[k] = data0[k*32+(4*0)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[0].u_sram128x8_2.mem[k] = data0[k*32+(4*0)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[0].u_sram128x8_3.mem[k] = data0[k*32+(4*0)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[0].u_sram128x8_4.mem[k] = data0[k*32+(4*0)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[1].u_sram128x8_1.mem[k] = data0[k*32+(4*1)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[1].u_sram128x8_2.mem[k] = data0[k*32+(4*1)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[1].u_sram128x8_3.mem[k] = data0[k*32+(4*1)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[1].u_sram128x8_4.mem[k] = data0[k*32+(4*1)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[2].u_sram128x8_1.mem[k] = data0[k*32+(4*2)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[2].u_sram128x8_2.mem[k] = data0[k*32+(4*2)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[2].u_sram128x8_3.mem[k] = data0[k*32+(4*2)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[2].u_sram128x8_4.mem[k] = data0[k*32+(4*2)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[3].u_sram128x8_1.mem[k] = data0[k*32+(4*3)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[3].u_sram128x8_2.mem[k] = data0[k*32+(4*3)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[3].u_sram128x8_3.mem[k] = data0[k*32+(4*3)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[3].u_sram128x8_4.mem[k] = data0[k*32+(4*3)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[4].u_sram128x8_1.mem[k] = data0[k*32+(4*4)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[4].u_sram128x8_2.mem[k] = data0[k*32+(4*4)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[4].u_sram128x8_3.mem[k] = data0[k*32+(4*4)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[4].u_sram128x8_4.mem[k] = data0[k*32+(4*4)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[5].u_sram128x8_1.mem[k] = data0[k*32+(4*5)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[5].u_sram128x8_2.mem[k] = data0[k*32+(4*5)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[5].u_sram128x8_3.mem[k] = data0[k*32+(4*5)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[5].u_sram128x8_4.mem[k] = data0[k*32+(4*5)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[6].u_sram128x8_1.mem[k] = data0[k*32+(4*6)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[6].u_sram128x8_2.mem[k] = data0[k*32+(4*6)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[6].u_sram128x8_3.mem[k] = data0[k*32+(4*6)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[6].u_sram128x8_4.mem[k] = data0[k*32+(4*6)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[7].u_sram128x8_1.mem[k] = data0[k*32+(4*7)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[7].u_sram128x8_2.mem[k] = data0[k*32+(4*7)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[7].u_sram128x8_3.mem[k] = data0[k*32+(4*7)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[3].col_gen[7].u_sram128x8_4.mem[k] = data0[k*32+(4*7)+3];
    end

    $readmemh("../../scripts/hex_data4.txt",data0);
    for (k=0; k < 128; k=k+1) begin : line_gen4
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[0].u_sram128x8_1.mem[k] = data0[k*32+(4*0)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[0].u_sram128x8_2.mem[k] = data0[k*32+(4*0)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[0].u_sram128x8_3.mem[k] = data0[k*32+(4*0)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[0].u_sram128x8_4.mem[k] = data0[k*32+(4*0)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[1].u_sram128x8_1.mem[k] = data0[k*32+(4*1)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[1].u_sram128x8_2.mem[k] = data0[k*32+(4*1)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[1].u_sram128x8_3.mem[k] = data0[k*32+(4*1)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[1].u_sram128x8_4.mem[k] = data0[k*32+(4*1)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[2].u_sram128x8_1.mem[k] = data0[k*32+(4*2)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[2].u_sram128x8_2.mem[k] = data0[k*32+(4*2)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[2].u_sram128x8_3.mem[k] = data0[k*32+(4*2)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[2].u_sram128x8_4.mem[k] = data0[k*32+(4*2)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[3].u_sram128x8_1.mem[k] = data0[k*32+(4*3)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[3].u_sram128x8_2.mem[k] = data0[k*32+(4*3)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[3].u_sram128x8_3.mem[k] = data0[k*32+(4*3)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[3].u_sram128x8_4.mem[k] = data0[k*32+(4*3)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[4].u_sram128x8_1.mem[k] = data0[k*32+(4*4)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[4].u_sram128x8_2.mem[k] = data0[k*32+(4*4)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[4].u_sram128x8_3.mem[k] = data0[k*32+(4*4)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[4].u_sram128x8_4.mem[k] = data0[k*32+(4*4)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[5].u_sram128x8_1.mem[k] = data0[k*32+(4*5)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[5].u_sram128x8_2.mem[k] = data0[k*32+(4*5)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[5].u_sram128x8_3.mem[k] = data0[k*32+(4*5)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[5].u_sram128x8_4.mem[k] = data0[k*32+(4*5)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[6].u_sram128x8_1.mem[k] = data0[k*32+(4*6)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[6].u_sram128x8_2.mem[k] = data0[k*32+(4*6)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[6].u_sram128x8_3.mem[k] = data0[k*32+(4*6)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[6].u_sram128x8_4.mem[k] = data0[k*32+(4*6)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[7].u_sram128x8_1.mem[k] = data0[k*32+(4*7)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[7].u_sram128x8_2.mem[k] = data0[k*32+(4*7)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[7].u_sram128x8_3.mem[k] = data0[k*32+(4*7)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[4].col_gen[7].u_sram128x8_4.mem[k] = data0[k*32+(4*7)+3];
    end

    $readmemh("../../scripts/hex_data5.txt",data0);
    for (k=0; k < 128; k=k+1) begin : line_gen5
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[0].u_sram128x8_1.mem[k] = data0[k*32+(4*0)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[0].u_sram128x8_2.mem[k] = data0[k*32+(4*0)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[0].u_sram128x8_3.mem[k] = data0[k*32+(4*0)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[0].u_sram128x8_4.mem[k] = data0[k*32+(4*0)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[1].u_sram128x8_1.mem[k] = data0[k*32+(4*1)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[1].u_sram128x8_2.mem[k] = data0[k*32+(4*1)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[1].u_sram128x8_3.mem[k] = data0[k*32+(4*1)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[1].u_sram128x8_4.mem[k] = data0[k*32+(4*1)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[2].u_sram128x8_1.mem[k] = data0[k*32+(4*2)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[2].u_sram128x8_2.mem[k] = data0[k*32+(4*2)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[2].u_sram128x8_3.mem[k] = data0[k*32+(4*2)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[2].u_sram128x8_4.mem[k] = data0[k*32+(4*2)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[3].u_sram128x8_1.mem[k] = data0[k*32+(4*3)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[3].u_sram128x8_2.mem[k] = data0[k*32+(4*3)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[3].u_sram128x8_3.mem[k] = data0[k*32+(4*3)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[3].u_sram128x8_4.mem[k] = data0[k*32+(4*3)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[4].u_sram128x8_1.mem[k] = data0[k*32+(4*4)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[4].u_sram128x8_2.mem[k] = data0[k*32+(4*4)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[4].u_sram128x8_3.mem[k] = data0[k*32+(4*4)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[4].u_sram128x8_4.mem[k] = data0[k*32+(4*4)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[5].u_sram128x8_1.mem[k] = data0[k*32+(4*5)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[5].u_sram128x8_2.mem[k] = data0[k*32+(4*5)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[5].u_sram128x8_3.mem[k] = data0[k*32+(4*5)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[5].u_sram128x8_4.mem[k] = data0[k*32+(4*5)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[6].u_sram128x8_1.mem[k] = data0[k*32+(4*6)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[6].u_sram128x8_2.mem[k] = data0[k*32+(4*6)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[6].u_sram128x8_3.mem[k] = data0[k*32+(4*6)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[6].u_sram128x8_4.mem[k] = data0[k*32+(4*6)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[7].u_sram128x8_1.mem[k] = data0[k*32+(4*7)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[7].u_sram128x8_2.mem[k] = data0[k*32+(4*7)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[7].u_sram128x8_3.mem[k] = data0[k*32+(4*7)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[5].col_gen[7].u_sram128x8_4.mem[k] = data0[k*32+(4*7)+3];
    end

    $readmemh("../../scripts/hex_data6.txt",data0);
    for (k=0; k < 128; k=k+1) begin : line_gen6
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[0].u_sram128x8_1.mem[k] = data0[k*32+(4*0)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[0].u_sram128x8_2.mem[k] = data0[k*32+(4*0)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[0].u_sram128x8_3.mem[k] = data0[k*32+(4*0)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[0].u_sram128x8_4.mem[k] = data0[k*32+(4*0)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[1].u_sram128x8_1.mem[k] = data0[k*32+(4*1)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[1].u_sram128x8_2.mem[k] = data0[k*32+(4*1)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[1].u_sram128x8_3.mem[k] = data0[k*32+(4*1)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[1].u_sram128x8_4.mem[k] = data0[k*32+(4*1)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[2].u_sram128x8_1.mem[k] = data0[k*32+(4*2)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[2].u_sram128x8_2.mem[k] = data0[k*32+(4*2)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[2].u_sram128x8_3.mem[k] = data0[k*32+(4*2)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[2].u_sram128x8_4.mem[k] = data0[k*32+(4*2)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[3].u_sram128x8_1.mem[k] = data0[k*32+(4*3)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[3].u_sram128x8_2.mem[k] = data0[k*32+(4*3)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[3].u_sram128x8_3.mem[k] = data0[k*32+(4*3)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[3].u_sram128x8_4.mem[k] = data0[k*32+(4*3)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[4].u_sram128x8_1.mem[k] = data0[k*32+(4*4)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[4].u_sram128x8_2.mem[k] = data0[k*32+(4*4)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[4].u_sram128x8_3.mem[k] = data0[k*32+(4*4)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[4].u_sram128x8_4.mem[k] = data0[k*32+(4*4)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[5].u_sram128x8_1.mem[k] = data0[k*32+(4*5)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[5].u_sram128x8_2.mem[k] = data0[k*32+(4*5)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[5].u_sram128x8_3.mem[k] = data0[k*32+(4*5)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[5].u_sram128x8_4.mem[k] = data0[k*32+(4*5)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[6].u_sram128x8_1.mem[k] = data0[k*32+(4*6)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[6].u_sram128x8_2.mem[k] = data0[k*32+(4*6)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[6].u_sram128x8_3.mem[k] = data0[k*32+(4*6)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[6].u_sram128x8_4.mem[k] = data0[k*32+(4*6)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[7].u_sram128x8_1.mem[k] = data0[k*32+(4*7)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[7].u_sram128x8_2.mem[k] = data0[k*32+(4*7)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[7].u_sram128x8_3.mem[k] = data0[k*32+(4*7)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[6].col_gen[7].u_sram128x8_4.mem[k] = data0[k*32+(4*7)+3];
    end

    $readmemh("../../scripts/hex_data7.txt",data0);
    for (k=0; k < 128; k=k+1) begin : line_gen7
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[0].u_sram128x8_1.mem[k] = data0[k*32+(4*0)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[0].u_sram128x8_2.mem[k] = data0[k*32+(4*0)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[0].u_sram128x8_3.mem[k] = data0[k*32+(4*0)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[0].u_sram128x8_4.mem[k] = data0[k*32+(4*0)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[1].u_sram128x8_1.mem[k] = data0[k*32+(4*1)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[1].u_sram128x8_2.mem[k] = data0[k*32+(4*1)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[1].u_sram128x8_3.mem[k] = data0[k*32+(4*1)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[1].u_sram128x8_4.mem[k] = data0[k*32+(4*1)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[2].u_sram128x8_1.mem[k] = data0[k*32+(4*2)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[2].u_sram128x8_2.mem[k] = data0[k*32+(4*2)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[2].u_sram128x8_3.mem[k] = data0[k*32+(4*2)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[2].u_sram128x8_4.mem[k] = data0[k*32+(4*2)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[3].u_sram128x8_1.mem[k] = data0[k*32+(4*3)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[3].u_sram128x8_2.mem[k] = data0[k*32+(4*3)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[3].u_sram128x8_3.mem[k] = data0[k*32+(4*3)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[3].u_sram128x8_4.mem[k] = data0[k*32+(4*3)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[4].u_sram128x8_1.mem[k] = data0[k*32+(4*4)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[4].u_sram128x8_2.mem[k] = data0[k*32+(4*4)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[4].u_sram128x8_3.mem[k] = data0[k*32+(4*4)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[4].u_sram128x8_4.mem[k] = data0[k*32+(4*4)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[5].u_sram128x8_1.mem[k] = data0[k*32+(4*5)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[5].u_sram128x8_2.mem[k] = data0[k*32+(4*5)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[5].u_sram128x8_3.mem[k] = data0[k*32+(4*5)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[5].u_sram128x8_4.mem[k] = data0[k*32+(4*5)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[6].u_sram128x8_1.mem[k] = data0[k*32+(4*6)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[6].u_sram128x8_2.mem[k] = data0[k*32+(4*6)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[6].u_sram128x8_3.mem[k] = data0[k*32+(4*6)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[6].u_sram128x8_4.mem[k] = data0[k*32+(4*6)+3];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[7].u_sram128x8_1.mem[k] = data0[k*32+(4*7)+0];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[7].u_sram128x8_2.mem[k] = data0[k*32+(4*7)+1];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[7].u_sram128x8_3.mem[k] = data0[k*32+(4*7)+2];
        u_system.u_main_mem.u_mem_array.mem_gen.row_gen[7].col_gen[7].u_sram128x8_4.mem[k] = data0[k*32+(4*7)+3];
    end

//Initializing OPROM
    $readmemb("../../scripts/oprom_dump_lower.txt",oprom_data0);
    for (k = 0; k < 32; k= k+1) begin 
       u_system.u_cpu.u_decode.op_rom_gen[0].rom0.mem[k] = oprom_data0[k];
       u_system.u_cpu.u_decode.op_rom_gen[1].rom0.mem[k] = oprom_data0[k+32];
       u_system.u_cpu.u_decode.op_rom_gen[2].rom0.mem[k] = oprom_data0[k+2*32];
       u_system.u_cpu.u_decode.op_rom_gen[3].rom0.mem[k] = oprom_data0[k+3*32];
       u_system.u_cpu.u_decode.op_rom_gen[4].rom0.mem[k] = oprom_data0[k+4*32];
       u_system.u_cpu.u_decode.op_rom_gen[5].rom0.mem[k] = oprom_data0[k+5*32];
       u_system.u_cpu.u_decode.op_rom_gen[6].rom0.mem[k] = oprom_data0[k+6*32];
       u_system.u_cpu.u_decode.op_rom_gen[7].rom0.mem[k] = oprom_data0[k+7*32];
    end

    $readmemb("../../scripts/oprom_dump_upper.txt",oprom_data1);
    for (k = 0; k < 32; k= k+1) begin
       u_system.u_cpu.u_decode.op_rom_gen[0].rom1.mem[k] = oprom_data1[k];
       u_system.u_cpu.u_decode.op_rom_gen[1].rom1.mem[k] = oprom_data1[k+32]; 
       u_system.u_cpu.u_decode.op_rom_gen[2].rom1.mem[k] = oprom_data1[k+2*32];
       u_system.u_cpu.u_decode.op_rom_gen[3].rom1.mem[k] = oprom_data1[k+3*32];
       u_system.u_cpu.u_decode.op_rom_gen[4].rom1.mem[k] = oprom_data1[k+4*32];
       u_system.u_cpu.u_decode.op_rom_gen[5].rom1.mem[k] = oprom_data1[k+5*32];
       u_system.u_cpu.u_decode.op_rom_gen[6].rom1.mem[k] = oprom_data1[k+6*32];
       u_system.u_cpu.u_decode.op_rom_gen[7].rom1.mem[k] = oprom_data1[k+7*32];
    end

//Initializing SUBOPROM
    $readmemb("../../scripts/subrom_dump_lower.txt",subrom_data0);
    
    for (k = 0; k < 32; k= k+1) begin
       u_system.u_cpu.u_decode.sub_rom_gen[0].subrom0.mem[k] = subrom_data0[k];
       u_system.u_cpu.u_decode.sub_rom_gen[1].subrom0.mem[k] = subrom_data0[k+32]; 
       u_system.u_cpu.u_decode.sub_rom_gen[2].subrom0.mem[k] = subrom_data0[k+2*32];
       u_system.u_cpu.u_decode.sub_rom_gen[3].subrom0.mem[k] = subrom_data0[k+3*32];
       u_system.u_cpu.u_decode.sub_rom_gen[4].subrom0.mem[k] = subrom_data0[k+4*32];
       u_system.u_cpu.u_decode.sub_rom_gen[5].subrom0.mem[k] = subrom_data0[k+5*32];
       u_system.u_cpu.u_decode.sub_rom_gen[6].subrom0.mem[k] = subrom_data0[k+6*32];
       u_system.u_cpu.u_decode.sub_rom_gen[7].subrom0.mem[k] = subrom_data0[k+7*32];
    end 

    $readmemb("../../scripts/subrom_dump_upper.txt",subrom_data1);

    for (k = 0; k < 32; k= k+1) begin
       u_system.u_cpu.u_decode.sub_rom_gen[0].subrom1.mem[k] = subrom_data1[k];
       u_system.u_cpu.u_decode.sub_rom_gen[1].subrom1.mem[k] = subrom_data1[k+32];
       u_system.u_cpu.u_decode.sub_rom_gen[2].subrom1.mem[k] = subrom_data1[k+2*32];
       u_system.u_cpu.u_decode.sub_rom_gen[3].subrom1.mem[k] = subrom_data1[k+3*32];
       u_system.u_cpu.u_decode.sub_rom_gen[4].subrom1.mem[k] = subrom_data1[k+4*32];
       u_system.u_cpu.u_decode.sub_rom_gen[5].subrom1.mem[k] = subrom_data1[k+5*32];
       u_system.u_cpu.u_decode.sub_rom_gen[6].subrom1.mem[k] = subrom_data1[k+6*32];
       u_system.u_cpu.u_decode.sub_rom_gen[7].subrom1.mem[k] = subrom_data1[k+7*32];
    end

//Initializing MODROM
    $readmemb("../../scripts/modrom.txt",modrom_data);
    
    for (k = 0; k < 32; k= k+1) begin
       u_system.u_cpu.u_decode.modrom.mem[k] = modrom_data[k];
    end

//Initializing RSEQ ROM
    $readmemb("../../scripts/introm_dump0.txt",int_exp_data0);
    $readmemb("../../scripts/introm_dump1.txt",int_exp_data1);
    $readmemb("../../scripts/introm_dump2.txt",int_exp_data2);
    for (k = 0; k < 8; k= k+1) begin
       u_system.u_cpu.u_rseq_rom.rom0.mem[k] = int_exp_data0[k];
       u_system.u_cpu.u_rseq_rom.rom1.mem[k] = int_exp_data1[k];
       u_system.u_cpu.u_rseq_rom.rom2.mem[k] = int_exp_data2[k];

    end

end
endmodule

