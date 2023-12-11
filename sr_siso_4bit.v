module sr_siso_4bit(sin, clk, rst, sout) ;
	
	input clk, rst, sin ;
	output sout ;

	reg [3:0] temp ;

	always @(posedge(clk), posedge(rst))
		begin
			if (rst == 1 'b1)
					temp <= 4 'b0000 ;

			else if (clk == 1 'b1)
				begin
					temp <= temp << 1;
					temp[0] <= sin ;
				end
		end 
	assign sout = temp[3] ;
endmodule


