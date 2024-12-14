/* verilator lint_off DECLFILENAME */
module fa_mux41(a,b,cin,sum,cout);
input a;
input b;
input cin;
output sum;
output cout;

mux41 m0(a,b,cin,~cin,~cin,cin,sum);
mux41 m1(a,b,0,cin,cin,1,cout);

endmodule

module mux41(s0,s1,i0,i1,i2,i3,y);
input s0;
input s1;
input i0;
input i1;
input i2;
input i3;
output y;

assign y=s1?(s0?i3:i2):(s0?i1:i0);

endmodule
/* verilator lint_off DECLFILENAME */
