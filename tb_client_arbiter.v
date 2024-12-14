module tb_client_arbiter;
  // Inputs to the arbiter
  reg clk;
  reg reset_n;
  reg priority_sel;
  reg client1_req;
  reg client2_req;
  // Outputs from the arbiter
  wire o_grant1;
  wire o_grant2;
  // Instantiate the arbiter module
 client_arbiter uut (
    .clock(clk),
    .reset_n(reset_n),
    .priority_sel(priority_sel),
    .client1_req(client1_req),
    .client2_req(client2_req),
    .o_grant1(o_grant1),
    .o_grant2(o_grant2)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10ns clock period
  end
  // Test stimulus
  initial begin
	  $dumpfile("tb_client_arbiter.vcd");
	  $dumpvars(0,tb_client_arbiter);

    // Initialize inputs
    reset_n = 0;
    priority_sel = 0;
    client1_req = 0;
    client2_req = 0;

    // Apply reset
    #10 reset_n = 1;

    // Test case 1: No requests
    #10;
    $display("Test 1: No requests");
    $display("o_grant1 = %b, o_grant2 = %b", o_grant1, o_grant2);

    // Test case 2: client1 requests with priority_sel = 0
    client1_req = 1;
    #10;
    $display("Test 2: client1 requests, priority_sel = 0");
    $display("o_grant1 = %b, o_grant2 = %b", o_grant1, o_grant2);

    // Test case 3: client2 requests with priority_sel = 1
    client1_req = 0;
    client2_req = 1;
    priority_sel = 1;
    #10;
    $display("Test 3: client2 requests, priority_sel = 1");
    $display("o_grant1 = %b, o_grant2 = %b", o_grant1, o_grant2);

    // Test case 4: Both clients request, check priority handling
    client1_req = 1;
    client2_req = 1;
    priority_sel = 0;
    #10;
    $display("Test 4: Both clients request, priority_sel = 0");
    $display("o_grant1 = %b, o_grant2 = %b", o_grant1, o_grant2);

    priority_sel = 1;
    #10;
    $display("Test 5: Both clients request, priority_sel = 1");
    $display("o_grant1 = %b, o_grant2 = %b", o_grant1, o_grant2);

    // Finish simulation
    #10 $finish;
  end

endmodule
