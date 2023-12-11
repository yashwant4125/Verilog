module d_latch(din, clk, rst, qout) ;

	input din, clk, rst ;
	output reg qout ;

	always @(clk, rst, din)
		begin: always_block

			if( rst == 1 'b1)
				qout = 1 'b0 ;

			else if(clk == 1 'b1)
				begin 
					qout = din ;
				end

		end: always_block
endmodule
			
