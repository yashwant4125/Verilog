module sd_0001(x, clk, rst, y) ;

	input x, clk, rst ;
	output reg y ;

	reg [1:0] ps, ns ;

	parameter s0 = 4 'b0000,
		  s1 = 4 'b0001,
		  s2 = 4 'b0010,
		  s3 = 4 'b0011 ;	

	always @(posedge(clk), posedge(rst))
		begin: always_block
			if (rst == 1 'b1)
				begin
					ps <= s0 ;
					y <= 1 'b0 ;
				end 

			else if (clk == 1 'b1)
				begin: else_if_block
					y = 1 'b0 ;
					case(ps)
						s0 : if(x == 1 'b1)
							ns <= s0 ;
						     else if(x == 1 'b0)
							ns <= s1 ;

						s1 : if(x == 1 'b0)
							ns <= s2 ;
						     else if(x == 1 'b1)
							ns <= s0 ;	
	
						s2 : if(x == 1 'b0)
							ns <= s3 ;
						     else if(x == 1 'b1)
							ns <= s0 ;

						s3 : if(x == 1 'b1)
							begin
								ns <= s0 ;
								y <= 1 'b1 ;
							end
						     else if(x == 1 'b1)
							ns <= s0 ;
					endcase

				end: else_if_block

		end: always_block

	always @(ns)
		ps <= ns ;

endmodule
	




