module tb_decade_counter();
reg clk;
reg reset;
reg enable;
/*verilator lint_off UNUSEDSIGNAL*/
wire [3:0] cnt; 
/*verilator lint_on UNUSEDSIGNAL*/

decade_counter dut(enable, clk, reset, cnt);

always #5 clk <= ~clk;

initial begin
    clk=0;
reset=0;
enable=0;

#10 reset=0;
#10 reset=1;
enable=1;

#500 $finish;

end

initial begin
	$dumpfile("tb_decade_counter.vcd"); 
	$dumpvars(0,tb_decade_counter);
end
endmodule
