module SwLed(SW, LEDR);
input [0:9] SW;
output [9:0] LEDR;

buf U0 (LEDR[0], SW[0]); // first parameter is output signal
buf U1 (LEDR[1], SW[1]); 
buf U2 (LEDR[2], SW[2]); 
buf U3 (LEDR[3], SW[3]); 
buf U4 (LEDR[4], SW[4]); 
buf U5 (LEDR[5], SW[5]); 
buf U6 (LEDR[6], SW[6]); 
buf U7 (LEDR[7], SW[7]); 
buf U8 (LEDR[8], SW[8]); 
buf U9 (LEDR[9], SW[9]); 

endmodule