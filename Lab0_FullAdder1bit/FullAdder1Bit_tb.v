`timescale 1ns/1ps

module FullAdder1Bit_tb();

reg A, B, CIN;
wire S, COUT;

FullAdder1Bit DUT(.a(A), .b(B), .cin(CIN), .s(S), .cout(COUT));

initial begin
	CIN = 0; A = 0;  B = 0; 
#5	CIN = 0 ; A = 0; B = 1;
#5	CIN = 0 ; A = 1; B = 0;
#5	CIN = 0 ; A = 1; B = 1;
#5	CIN = 0 ; A = 0; B = 1;
#5	CIN = 1 ; A = 1; B = 0;
#5	CIN = 1 ; A = 1; B = 1;

#5 $stop;

end

endmodule