module decoder_24(
	input a,
	input b,
	output d0,
	output d1,
	output d2,
	output d3
);

wire x,y;

not n0(x,a);
not n1(y,b);

and a0(d0,x,y);
and a1(d1,x,b);
and a2(d2,a,y);
and a3(d3,a,b);

endmodule

