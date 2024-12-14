/* verilator lint_off UNOPTFLAT */
module tb_dlatch_nand();
/*verilator lint_off unusedsignal*/
reg d;
reg c;
wire q;
wire nq;
/*verilator lint_on unusedsignal*/
dlatch_nand dut(d,c,q,nq);

initial begin
	$dumpfile("tb_dlatch_nand.vcd");
	$dumpvars(0,tb_dlatch_nand);

	d=0;
	c=0;

	#10 c=1;d=1; #10;

	#10 c=0; #10;

	#10 c=1; d=0; #10;

	#10 c=0; #10;

	#10 c=1; d=1; #10;

	#10 $finish;

end
endmodule
/* verilator lint_on UNOPTFLAT */
