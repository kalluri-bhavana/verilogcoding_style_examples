/* verilator lint_off DECLFILENAME */
module or_ha(
	input a,
	input b,
	output out
);

wire s,c;

ha ha0(a,b,s,c);

assign out=s|c;

endmodule

module ha(
        input a,
        input b,
        output sum,
        output carry
);

assign sum=a^b;
assign carry=a&b;

endmodule
/* verilator lint_on DECLFILENAME */
