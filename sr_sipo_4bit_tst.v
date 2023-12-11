module sr_sipo_4bit_tst() ;

	wire [3:0] pout_tst ;
	reg sin_tst ;
	reg clk_tst, rst_tst ;

	sr_sipo_4bit DUT(sin_tst, clk_tst, rst_tst, pout_tst) ;

	initial
		begin
			sin_tst = 1 'd0 ;		
			clk_tst = 1 'b0 ;
			rst_tst = 1 'b0 ;
			#10 rst_tst = 1 'b1 ;
			#10 rst_tst = 1 'b0 ;
		end

	always #25 clk_tst = ~clk_tst ;			

	initial
		begin
			sin_tst = 1 'b0 ;
			#60 sin_tst = 1 'b0 ;	
			#60 sin_tst = 1 'b1 ;	
			#60 sin_tst = 1 'b0 ;	
			#60 sin_tst = 1 'b1 ;	
			#60 sin_tst = 1 'b0 ;	
			#60 sin_tst = 1 'b1 ;	
			#60 sin_tst = 1 'b0 ;	
			#60 sin_tst = 1 'b1 ;	
			#60 sin_tst = 1 'b0 ;	
		end

endmodule

