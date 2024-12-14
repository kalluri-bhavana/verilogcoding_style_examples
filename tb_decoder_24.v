module tb_decoder_24();

reg a,b;
/*verilator lint_off unusedsignal*/
wire d0,d1,d2,d3;
/*verilator lint_on unusedsignal*/

decoder_24 dut(a,b,d0,d1,d2,d3);

initial begin

	$dumpfile("tb_decoder_24.vcd");
	$dumpvars(0,tb_decoder_24);

	a=0; b=0;
	#10;

	a=0; b=1;
	#10;

	a=1; b=0;
	#10;

	a=1; b=1;
	#10;

end
endmodule

