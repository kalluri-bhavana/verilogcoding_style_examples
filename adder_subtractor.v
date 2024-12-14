/* verilator lint_off DECLFILENAME */
module adder_subtractor(a,b,sel,sout,cout);

input [3:0]a;
input [3:0]b;
input sel;
output [3:0]sout;
output cout;

wire [3:0]l;
wire [2:0]c;

assign l[0]=sel^b[0];
assign l[1]=sel^b[1];
assign l[2]=sel^b[2];
assign l[3]=sel^b[3];

full_adder fa0(a[0],l[0],sel,sout[0],c[0]);
full_adder fa1(a[1],l[1],c[0],sout[1],c[1]);
full_adder fa2(a[2],l[2],c[1],sout[2],c[2]);
full_adder fa3(a[3],l[3],c[2],sout[3],cout);

endmodule

module full_adder(a,b,c,sum,carry);
input a,b,c;
output sum;
output carry;

assign sum=a^b^c;
assign carry=(a&b)|(b&c)|(c&a);

endmodule
/* verilator lint_on DECLFILENAME */
