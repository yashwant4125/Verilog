module sr_piso_4bit_tst() ;

	wire sout_tst ;
	reg [3:0] din_tst ;
	reg clk_tst, rst_tst, load_tst ;

	sr_piso_4bit DUT(din_tst, clk_tst, rst_tst, load_tst, sout_tst) ;

	initial
		begin
			din_tst = 4 'd0 ;		
			clk_tst = 1 'b0 ;	
			load_tst = 1 'b0 ;
			rst_tst = 1 'b0 ;
			#10 rst_tst = 1 'b1 ;
			#10 rst_tst = 1 'b0 ;
		end

	always #25 clk_tst = ~clk_tst ;

	initial
		begin	
			#30 load_tst = 1 'b1 ;
			#10 din_tst = 4 'b0101 ;
			#60 load_tst = 1 'b0 ;
			#300 load_tst = 1 'b1 ;
			#10 din_tst = 4 'b0111 ;
			#60 load_tst = 1 'b0 ;
		end

endmodule

