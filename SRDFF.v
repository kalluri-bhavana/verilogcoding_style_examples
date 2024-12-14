module SRDFF(
    input clk,
    input reset,
    input set,
    input d,
    output reg q
);
    always @(posedge clk or posedge reset or posedge set) begin
        if (reset)
            q <= 0;
        else if (set)
            q <= 1;
        else
            q <= d;
    end
endmodule
