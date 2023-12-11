module p_encoder_8_3(en, in, v_out, out) ;
	
	input [7:0] in ;
	input en ;
	output reg v_out ;
	output reg [2:0] out ;

	always @(in, en)
		begin: always_block

		if (en == 1 'b0)
			{v_out, out} = 4 'b0xxx ;
		
		else if (en == 1 'b1)
			begin: else_if_block

			v_out = 1 'b1 ;

			if (in == 8 'd1)
				out = 3 'd0 ;
			
			else if (in[7:1] == 7 'd1)
				out = 3 'd1 ;

			else if (in[7:2] == 6 'd1)
				out = 3 'd2 ;

			else if (in[7:3] == 5 'd1)
				out = 3 'd3 ;

			else if (in[7:4] == 4 'd1)
				out = 3 'd4 ;

			else if (in[7:5] == 3 'd1)
				out = 3 'd5 ;

			else if (in[7:6] == 2 'd1)
				out = 3 'd6 ;

			else if (in[7] == 1 'd1)
				out = 3 'd7 ;

			else
				out = 3 'dx ;

			end: else_if_block

		end: always_block

endmodule

			
