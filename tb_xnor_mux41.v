/* verilator lint_off UNUSEDSIGNAL */
module tb_xnor_mux41();

reg a,b;
wire y;

gxnor_mux41 dut(
	.a(a),
	.b(b),
	.y(y)
);

initial begin

	$dumpfile("tb_xnor_mux41.vcd");
	$dumpvars(0,tb_xnor_mux41);

	a=0; b=0;
	#10;

	a=0; b=1;
	#10;

	a=1; b=0;
	#10;

	a=1; b=1;
	#10;

	$finish;

end
endmodule
/* verilator lint_on UNUSEDSIGNAL */
