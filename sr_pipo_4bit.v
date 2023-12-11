module sr_pipo_4bit(din, clk, rst, dout) ;
	
	input rst, clk ;
	input [3:0] din ;
	output reg [3:0] dout ;

	always @(posedge(clk), posedge(rst))
		begin
			if (rst == 1 'b1)
				dout = 4 'd0 ;

			else if (clk == 1 'b1)
				dout = din ;
		end

endmodule

