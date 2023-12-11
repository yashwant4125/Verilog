module sd_1001001001(x, clk, rst, y) ;

	input x, clk, rst ;
	output reg y ;

	reg [3:0] ps, ns ;

	parameter s0 = 4 'b0000,
		  s1 = 4 'b0001,
		  s2 = 4 'b0010,
		  s3 = 4 'b0011,		  
		  s4 = 4 'b0100,
		  s5 = 4 'b0101,
		  s6 = 4 'b0111,
		  s7 = 4 'b1000,
		  s8 = 4 'b1001,
		  s9 = 4 'b1010 ;

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
							ns <= s1 ;
						     else if(x == 1 'b0)
							ns <= s0 ;

						s1 : if(x == 1 'b0)
							ns <= s2 ;
						     else if(x == 1 'b1)
							ns <= s1 ;	
	
						s2 : if(x == 1 'b0)
							ns <= s3 ;
						     else if(x == 1 'b1)
							ns <= s1 ;

						s3 : if(x == 1 'b1)
							ns <= s4 ;
						     else if(x == 1 'b1)
							ns <= s0 ;	

						s4 : if(x == 1 'b0)
							ns <= s5 ;
						     else if(x == 1 'b1)
							ns <= s1 ;	
	
						s5 : if(x == 1 'b0)
							ns <= s6 ;
						     else if(x == 1 'b1)
							ns <= s1 ;

						s6 : if(x == 1 'b1)
							ns <= s7 ;
						     else if(x == 1 'b1)
							ns <= s0 ;	

						s7 : if(x == 1 'b0)
							ns <= s8 ;
						     else if(x == 1 'b1)
							ns <= s1 ;	
	
						s8 : if(x == 1 'b0)
							ns <= s9 ;
						     else if(x == 1 'b1)
							ns <= s1 ;

						s9 : if(x == 1 'b1)
							begin
								ns <= s7 ;
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
	




