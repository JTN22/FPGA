module FullAdder1Bit(a, b, cin, s, cout);
input a, b, cin;
output s, cout;

wire f1, f2, f3, f4;

xor U1 (f1, a, b);
and U2 (f2, a, b);
and U3 (f3, a, cin);
and U4 (f4, b, cin);
xor U5 (s, f1, cin);
or U6 (cout, f2, f3, f4);

endmodule