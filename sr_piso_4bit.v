module sr_piso_4bit(pin, clk, rst, load, sout) ;

	input clk, load, rst ;
	input [3:0] pin ;

	output sout ;

	reg [3:0] temp ;

	always @(posedge(clk), posedge(rst))
		begin
			if( rst == 1 'b1)
				temp <= 4 'd0 ;

			else if( clk == 1 'b1)
				begin
					if(load == 1 'b1)
						temp <= pin ;

					else if(load == 1 'b0)
						begin 
							temp <= temp << 1 ;
							temp[0] <= 1 'b0 ;
						end
				end
		end
	assign sout = temp[3] ;
endmodule

			
