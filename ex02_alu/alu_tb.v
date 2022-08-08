`timescale 1ns/1ps

module alu_tb();

reg clk;

reg [3:0] A;
reg [3:0] B;
reg [1:0] OP;
wire [3:0] Out;

alu DUT (.clk(clk), .a(A), .b(B), .alu_op(OP), .alu_out(Out));

parameter ALUOP_ADD = 2'b00,
		ALUOP_SUB = 2'b01,
		ALUOP_AND = 2'b10,
		ALUOP_OR = 2'b11;

initial begin
	// 4 + 6 = 10 = (1010)2
	clk = 1'b0; A = 4'd4; B = 4'd6; OP = ALUOP_ADD;
#2	clk = 1'b1; 

	// 4 - 6 = -2 = (1110)2's
#2	clk = 1'b0; OP = ALUOP_SUB;
#2	clk = 1'b1;

	// 4 & 6 = 4 = (0100)2
#2	clk = 1'b0; OP = ALUOP_AND;
#2	clk = 1'b1;

	// 4 | 6 = 6 = (0110)2
#2	clk = 1'b0; OP = ALUOP_OR;
#2	clk = 1'b1;

#2 	$stop;
end

endmodule