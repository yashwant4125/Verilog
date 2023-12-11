module sd_0001_tst() ;

	wire y_tst ;
	reg clk_tst, rst_tst, x_tst ;

	sd_0001 DUT(x_tst, clk_tst, rst_tst, y_tst) ;

	initial
		begin
			x_tst = 1 'b0 ;		
			clk_tst = 1 'b0 ;
			rst_tst = 1 'b0 ;
			#10 rst_tst = 1 'b1 ;
			#10 rst_tst = 1 'b0 ;
		end

	always #25 clk_tst = ~clk_tst ;

	initial
		begin
			x_tst = 1 'b0 ;
			#60 x_tst = 1 'b0 ;	
			#60 x_tst = 1 'b1 ;	
			#60 x_tst = 1 'b0 ;	
			#60 x_tst = 1 'b0 ;	
			#60 x_tst = 1 'b0 ;	
			#60 x_tst = 1 'b0 ;	
			#60 x_tst = 1 'b0 ;	
			#60 x_tst = 1 'b0 ;	
			#60 x_tst = 1 'b0 ;	
			#60 x_tst = 1 'b1 ;	
			#60 x_tst = 1 'b0 ;	
			#60 x_tst = 1 'b0 ;	
			rst_tst = 1 'b1 ;
			#30 rst_tst = 1 'b0 ;
			#60 x_tst = 1 'b0 ;	
			#60 x_tst = 1 'b1 ;	
			#60 x_tst = 1 'b0 ;	
			#60 x_tst = 1 'b0 ;	
		end
endmodule
	

