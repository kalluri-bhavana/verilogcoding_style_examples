module tb_adder_subtractor();
reg [3:0]a;
reg [3:0]b;
reg sel;
/*verilator lint_off unusedsignal*/
wire [3:0]sout;
wire cout;
/*verilator lint_on unusedsignal*/

adder_subtractor dut(a,b,sel,sout,cout);

initial begin
	$dumpfile("tb_adder_subtractor.vcd");
	$dumpvars(0,tb_adder_subtractor);

	a=4'b1111;
	b=4'b1111;
	sel=1'b1;
	#20;

	a=4'b1011;
	b=4'b1100;
	sel=1'b1;
	#20;

	a=4'b1010;
	b=4'b0101;
	sel=1'b1;
	#20;

	a=4'b1111;
	b=4'b1000;
	sel=1'b0;
	#20;

	a=4'b1010;
	b=4'b1101;
	sel=1'b0;
	#20;

	$finish;
end
endmodule

