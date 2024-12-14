module tb_fa_mux41();

reg a,b,cin;
/*verilator lint_off unusedsignal*/
wire sum,cout;
/*verilator lint_on unusedsignal*/
fa_mux41 dut(a,b,cin,sum,cout);

initial begin
	$dumpfile("tb_fa_mux41.vcd");
	$dumpvars(0,tb_fa_mux41);

	a=0;b=0;cin=0; #10;

	a=0;b=0;cin=1; #10;

	a=0;b=1;cin=0; #10;

	a=0;b=1;cin=1; #10;

	a=1;b=0;cin=0; #10;

	a=1;b=0;cin=1; #10;

	a=1;b=1;cin=0; #10;

	a=1;b=1;cin=1; #10;

end
endmodule


