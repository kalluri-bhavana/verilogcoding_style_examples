module encoder4_2(
	input [3:0] din,
        output reg [1:0] dout
);

always@(*)

begin
	case (din)
		4'b0001:dout=2'b00; //encoding 1 to 00
		4'b0010:dout=2'b01; //encoding 2 to 01
		4'b0100:dout=2'b10; //encoding 4 to 10
		4'b1000:dout=2'b11; //encoding 8 to 11
		default:dout=2'bxx; //default case
	endcase
end
endmodule


