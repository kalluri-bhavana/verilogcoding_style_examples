module synchronous_counter(clk,rst_n,up,counter);
        input clk; //clock input
        input rst_n; //active-low reset input
        input up; //direction control (up or down)
        output reg [3:0] counter;  //4bit counter output
//parameter size =4;
//specify counter size (4bits in this case)

   always@(posedge clk) begin
       if (!rst_n) begin
           counter <= 4'h0; //reset to zero
       end else begin
           if (up)
               counter <= counter + 1'b1; //increment counter
           else 
               counter <= counter - 1'b1; //decrement counter
       end
   end
endmodule

