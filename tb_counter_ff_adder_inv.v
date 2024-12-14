module tb_counter_ff_adder_inv();
    reg clk;
    reg reset;
    reg enable;
    wire [3:0] count;
  
    counter_ff_adder_inv dut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .count(count)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Simulation
    initial begin
        //$dumpfile("tb_counter_ff_adder_inv.vcd");
        //$dumpvars(0, tb_counter_ff_adder_inv);

        reset = 1;
        enable = 0;
        #10 reset = 0;
        #10 enable = 1;

        #2000 $finish;
    end
endmodule

