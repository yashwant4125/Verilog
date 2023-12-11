module sr_pipo_4bit_tst() ;

	wire [3:0] dout_tst ;
	reg [3:0] din_tst ;
	reg clk_tst, rst_tst ;

	sr_pipo_4bit DUT(din_tst, clk_tst, rst_tst, dout_tst) ;

	initial
		begin
			din_tst = 4 'd0 ;		
			clk_tst = 1 'b0 ;
			rst_tst = 1 'b0 ;
			#10 rst_tst = 1 'b1 ;
			#10 rst_tst = 1 'b0 ;
		end

	always #25 clk_tst = ~clk_tst ;

	initial
		begin
			din_tst = 4 'b0101 ;
			#60 din_tst = 4 'b0011 ;	
			rst_tst = 1 'b1 ;
			#30 rst_tst = 1 'b0 ;
			#60 din_tst = 4 'b1101 ;	
			#60 din_tst = 4 'b0111 ;	
		end

endmodule

