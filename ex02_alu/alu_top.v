module alu_top(SW, KEY, LEDR);
input [9:0] SW;
input [1:0] KEY;
output [9:0] LEDR;

wire clk;
not (clk, KEY[0]);

alu U1 (.clk(clk), .a(SW[7:4]), .b(SW[3:0]), .alu_op(SW[9:8]), .alu_out(LEDR[3:0]));

endmodule