module tb_or_ha();

reg a,b;
/*verilator lint_off unusedsignal*/
wire out;
/*verilator lint_on unusedsignal*/
or_ha dut(a,b,out);

initial begin
	$dumpfile("tb_or_ha.vcd");
	$dumpvars(0,tb_or_ha);

	a=0; b=0; #10;

	a=0; b=1; #10;

	a=1; b=0; #10;

	a=1; b=1; #10;

	$finish;

end
endmodule

