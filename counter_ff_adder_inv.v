
module Counter_ff_adder_inv(
    input clk,
    input reset,
    input enable,
    output [3:0] count
);
    reg [3:0] q;
    wire [3:0] next_count;
    wire [3:0] carry;

    // Generate next_count using adder (increment by 1 if enabled)
    ADDER add0 (.a(q[0]), .b(enable), .cin(1'b0), .sum(next_count[0]), .cout(carry[0]));
    ADDER add1 (.a(q[1]), .b(1'b0), .cin(carry[0]), .sum(next_count[1]), .cout(carry[1]));
    ADDER add2 (.a(q[2]), .b(1'b0), .cin(carry[1]), .sum(next_count[2]), .cout(carry[2]));
    ADDER add3 (.a(q[3]), .b(1'b0), .cin(carry[2]), .sum(next_count[3]), .cout(carry[3]));

    // SRDFF for storing count
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 4'b0;
        else if (enable)
            q <= next_count;
    end

    assign count = q; // Output the count
endmodule

