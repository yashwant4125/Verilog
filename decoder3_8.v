module decoder3_8( in, out) ;
	
	input [2:0] in ;
	output reg [7:0] out ;

	always @(in)
		begin: always_block
			if (in == 3 'd0)
				out = 8 'd1 ;
			
			else if (in == 3 'd1)
				out = 8 'd2 ;

			else if (in == 3 'd2)
				out = 8 'd4 ;

			else if (in == 3 'd3)
				out = 8 'd8 ;

			else if (in == 3 'd4)
				out = 8 'd16 ;

			else if (in == 3 'd5)
				out = 8 'd32 ;

			else if (in == 3 'd6)
				out = 8 'd64 ;

			else if (in == 3 'd7)
				out = 8 'd128 ;

			else
				out = 8 'dx ;

		end: always_block

endmodule

			
