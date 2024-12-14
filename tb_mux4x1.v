module tb_mux4x1();
  reg a,b,c,d,s0,s1;
 /*verilator lint_off unusedsignal*/
  wire out;
/*verilator lint_on unusedsignal*/
mux4x1  dut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .s0(s0),
    .s1(s1),
    .out(out)
  );
  initial begin
    $dumpfile("tb_mux4x1.vcd");  // Specify the VCD file name
    $dumpvars(0, tb_mux4x1);     
    // Test case 1:
    #10 a = 0; b = 0; c = 0; d = 0; s0 = 0; s1 = 0;
    // Test case 2:
    #10 a = 1; b = 0; c = 0; d = 0; s0 = 0; s1 = 0;
    // Test case 3: 
    #10 a = 0; b = 1; c = 0; d = 0; s0 = 1; s1 = 0;
    // Test case 4: 
    #10 a = 0; b = 0; c = 1; d = 0; s0 = 0; s1 = 1;
    // Test case 5:
    #10 a = 0; b = 0; c = 0; d = 1; s0 = 1; s1 = 1;
    // Test case 6:
    #10 a = 1; b = 1; c = 1; d = 1; s0 = 0; s1 = 0;
    #10 a = 1; b = 0; c = 1; d = 0; s0 = 1; s1 = 1;
    #10 a = 0; b = 1; c = 0; d = 1; s0 = 1; s1 = 0;
    // Test case 7:
    #10 a = 1; b = 1; c = 1; d = 1; s0 = 1; s1 = 1;
    #10 $finish;
  end
endmodule
