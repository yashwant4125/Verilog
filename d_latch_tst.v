module d_latch_tst();

	wire qout_tst ;
	reg clk_tst, rst_tst, din_tst ;

	d_latch DUT(din_tst, clk_tst, rst_tst, qout_tst);

	initial
		begin 
			clk_tst = 1 'b0 ;
			din_tst = 1 'b0 ;
			rst_tst = 1 'b0 ;
		end

	always 
		#50 clk_tst = ~clk_tst ;

	initial
		begin 
			#60 din_tst = 1 'b1 ;
			#10 rst_tst = 1 'b1 ;
			#10 din_tst = 1 'b0 ;
			#35 rst_tst = 1 'b0 ;
			#10 din_tst = 1 'b1 ;
			#35 din_tst = 1 'b0 ;
			#10 din_tst = 1 'b1 ;
			#40 din_tst = 1 'b0 ;
			#10 rst_tst = 1 'b1 ;
			#20 rst_tst = 1 'b0 ;
			#35 din_tst = 1 'b1 ;

		end

endmodule
