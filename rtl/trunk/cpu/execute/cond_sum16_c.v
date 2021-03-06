module cond_sum16_c ( A, B, CIN, S, COUT, c8, c4 );

input  [15:0] A, B;
input        CIN;
output [15:0] S;
output       COUT;
output       c8;
output       c4;

wire [15:0] S_temp;

cond_sum8_c u_cond_sum8_low   (.A(A[7:0]), .B(B[7:0]), .CIN(CIN), .S(S[7:0]), .COUT(c8  ), .c4(c4) );
cond_sum8_c u_cond_sum8_high0 (.A(A[15:8]), .B(B[15:8]), .CIN(1'b0), .S(S_temp[7:0]), .COUT(COUT0 ), .c4(/*unused*/) );
cond_sum8_c u_cond_sum8_high1 (.A(A[15:8]), .B(B[15:8]), .CIN(1'b1), .S(S_temp[15:8]), .COUT(COUT1 ), .c4(/*unused*/) );

mux2$ u_mux1[15:8] ( .in0(S_temp[7:0]), .in1(S_temp[15:8]), .s0(c8), .outb(S[15:8]) );

mux2$ u_mux2 ( .in0(COUT0), .in1(COUT1), .s0(c8), .outb(COUT) );

endmodule



