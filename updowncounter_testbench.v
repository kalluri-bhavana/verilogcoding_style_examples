module updowncounter_testbench();
    reg clock,rst_n,up;
    /*verilator lint_off UNUSEDSIGNAL*/
    wire [3:0] counter;
/*verilator lint_on UNUSEDSIGNAL*/
//instantiate the up-down counter module
    synchronous_counter dut(clock, rst_n, up, counter);
//generate clock with 10ns period
    initial begin
	clock=0;
	forever #5 clock = ~clock;
    end
//apply inputs
    initial begin
        rst_n = 1;
        #20;
        rst_n = 0;
        up=1; //set to up mode
        #30;
        up=0; //set to down mode
        #30;
        rst_n=1;
        up=0;
        #800;
	up=1;
	#1000;
        rst_n=0;
    end
    initial
    begin
	    $dumpfile("counter.vcd");
	    $dumpvars(0,updowncounter_testbench);
    end
    initial
	   #1400 $finish;
endmodule

