module tb_demux_1x8;
    reg data_in;
    reg [2:0] sel;
    /*verilator lint_off unusedsignal*/
    wire [7:0] data_out;
/*verilator lint_on unusedsignal*/
    demux_1x8 dut (
        .data_in(data_in),
        .sel(sel),
        .data_out(data_out)
    );
    initial begin
        $dumpfile("tb_demux_1x8.vcd");
        $dumpvars(0, tb_demux_1x8);
        // Test case 1: Set data_in to 1
        data_in = 1;
        sel = 3'b000; #10; 
        sel = 3'b001; #10;
        sel = 3'b010; #10; 
        sel = 3'b011; #10; 
        sel = 3'b100; #10; 
        sel = 3'b101; #10;
        sel = 3'b110; #10; 
        sel = 3'b111; #10; 
        // Test case 2: Set data_in to 0
        data_in = 0;
        sel = 3'b000; #10; 
        sel = 3'b001; #10; 
        sel = 3'b010; #10; 
        sel = 3'b011; #10;
        sel = 3'b100; #10;
        sel = 3'b101; #10; 
        sel = 3'b110; #10; 
        sel = 3'b111; #10; 
        $finish;
    end
endmodule
