module alu(clk, a, b, alu_op, alu_out);
input clk;
input [3:0] a;
input [3:0] b;
input [1:0] alu_op;
output [3:0] alu_out;

reg [3:0] alu_out; // change the alu_op data type from wire to reg

parameter ALUOP_ADD = 2'b00,
		ALUOP_SUB = 2'b01,
		ALUOP_AND = 2'b10,
		ALUOP_OR = 2'b11;

always @ (posedge clk) begin // Trigger this circuit when clk on rising edge
	if (alu_op == ALUOP_ADD)
		alu_out = a + b;
	else if (alu_op == ALUOP_SUB)
		alu_out = a - b;
	else if (alu_op == ALUOP_AND)
		alu_out = a & b;
	else
		alu_out = a | b;

end

endmodule