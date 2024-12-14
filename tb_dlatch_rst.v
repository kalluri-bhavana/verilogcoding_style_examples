module tb_dlatch_rst();

reg d;
reg clk;
reg rst;
/* verilator lint_off UNUSEDSIGNAL */
wire q;
/* verilator lint_on UNUSEDSIGNAL */
dlatch_rst dut(d,clk,rst,q);

initial begin
	$dumpfile("tb_dlatch_rst.vcd");
	$dumpvars(0,tb_dlatch_rst);

	d=0;
	clk=0;
	rst=0;

	#10 rst=1; #10;

	#10 rst=0; #10;

	#10 clk=1; d=1; #10;

	#10 clk=0; #10;

	#10 clk=1; d=0; #10;

	#10 clk=0; #10;

	#10 rst=1; #10;

	#10 rst=0; #10;

	#10 $finish;

end
endmodule

