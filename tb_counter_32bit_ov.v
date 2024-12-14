module tb_counter_32bit_ov();

reg clk;
reg reset;
/*verilator lint_off unusedsignal*/
wire [31:0] count;
/*verilator lint_on unusedsignal*/
/*verilator lint_off unusedsignal*/
wire overflow;
/*verilator lint_on unusedsignal*/
counter_32bit_ov dut(clk,reset,count,overflow);
always #5 clk<=~clk;

initial begin
	$dumpfile("tb_counter_32bit_ov.vcd");
	$dumpvars(0,tb_counter_32bit_ov);

	clk=0;
	reset=0;

	reset=1; #10;
	reset=0; #10;

	repeat (10) #10;
	force dut.count=32'hffffffff;

        #10;
	#10;

	$finish;
end
endmodule


