module fetch_fsm(
  input     clk,
  input     rst_n,
  input     de_p,
  input     eip_4,
  input     ic_hit,
  input     r_V_de,
  input     int,
  input     ic_exp,
  input     dc_exp,
  input     de_br_stall,
  input     ag_br_stall,
  input[1:0] ld_eip,
  output reg [1:0] f_ld_buf,
  output reg [2:0] f_curr_st,
  output reg [2:0] f_next_st,
  output reg  f_address_sel,
  output      f_nextstate_01_11
  );

  localparam IDLE    = 3'b000;
  localparam STATE_11  = 3'b111;
  localparam STATE_01  = 3'b101;
  localparam STATE_10  = 3'b110;
  localparam FE_STALL_11 = 3'b011;
  localparam FE_STALL_01 = 3'b001;
  localparam FE_STALL_01_WAIT = 3'b010;

  reg next_f_address_sel;

  always @(*) begin
    case(f_curr_st)
    IDLE : begin
      if(eip_4 && ic_hit) begin
        f_next_st <= STATE_10;
        next_f_address_sel = 1'b1;
        f_ld_buf <= 2'b11;
      end
      else if (ic_hit) begin
        f_next_st <= STATE_11;
        next_f_address_sel = 1'b1;
        f_ld_buf <= 2'b11;
      end
      else begin
        f_next_st <= IDLE;
        next_f_address_sel = 1'b0;
        f_ld_buf <= 2'b11;
      end
    end

    STATE_10 : begin
      if(ic_hit) begin
        f_next_st <= STATE_01;
        next_f_address_sel = 1'b1;
        f_ld_buf <= 2'b01;
      end
      else begin
        f_next_st <= STATE_10;
        next_f_address_sel = 1'b1;
        f_ld_buf <= 2'b00;
      end
    end

    STATE_01 : begin
      if(~de_p && ic_hit && r_V_de) begin
        f_next_st <= STATE_11;
        next_f_address_sel = 1'b1;
        f_ld_buf <= 2'b10;
      end
      else if(~de_p && r_V_de && (|ld_eip)) begin
        f_next_st <= FE_STALL_01;
        next_f_address_sel = 1'b0;
        f_ld_buf <= 2'b00;
      end
      else if(~de_p && r_V_de) begin
        f_next_st <= FE_STALL_01_WAIT;
        next_f_address_sel = 1'b1;
        f_ld_buf <= 2'b00;
      end
      else begin
        f_next_st <= STATE_01;
        next_f_address_sel = 1'b1;
        f_ld_buf <= 2'b00;
      end
    end

    STATE_11 : begin
      if(de_p && ic_hit & r_V_de) begin
        f_next_st <= STATE_01;
        next_f_address_sel = 1'b1;
        f_ld_buf <= 2'b01;
      end
      else if(de_p && r_V_de) begin
        f_next_st <= FE_STALL_11;
        next_f_address_sel = 1'b1;
        f_ld_buf <= 2'b00;
      end
      else begin
        f_next_st <= STATE_11;
        next_f_address_sel = 1'b1;
        f_ld_buf <= 2'b00;
      end
    end

    FE_STALL_11 : begin
      if(ic_hit) begin
        f_next_st <= STATE_01;
        next_f_address_sel = 1'b1;
        f_ld_buf <= 2'b01;
      end
      else begin
        f_next_st <= FE_STALL_11;
        next_f_address_sel = 1'b1;
        f_ld_buf <= 2'b00;
      end
    end

    FE_STALL_01 : begin
      if(ic_hit) begin
        f_next_st <= STATE_11;
        next_f_address_sel = 1'b1;
        f_ld_buf <= 2'b10;
      end
      else begin
        f_next_st <= FE_STALL_01;
        next_f_address_sel = 1'b0;
        f_ld_buf <= 2'b00;
      end
    end
 
    FE_STALL_01_WAIT : begin
      if(|ld_eip) begin
        f_next_st <= FE_STALL_01;
        next_f_address_sel = 1'b0;
        f_ld_buf <= 2'b00;
      end
      else begin
        f_next_st <= FE_STALL_01_WAIT;
        next_f_address_sel = 1'b1;
        f_ld_buf <= 2'b00;
      end
    end
 
    default : begin
        f_next_st <= IDLE;
        next_f_address_sel = 1'b0;
        f_ld_buf <= 2'b00;      
    end
 
    endcase
  end

  always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
      f_curr_st <= IDLE;
      f_address_sel <= 1'b0;
    end
    else if(int | ic_exp | dc_exp | de_br_stall | ag_br_stall) begin
      f_curr_st <= IDLE;
      f_address_sel <= 1'b0;
    end
    else begin
      f_curr_st <= f_next_st;
      f_address_sel <= next_f_address_sel;
    end
  end
 
  assign f_nextstate_01_11 = (f_next_st==STATE_11) || (f_next_st==STATE_01) ; 
endmodule
