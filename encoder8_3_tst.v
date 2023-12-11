module encoder8_3_tst() ;

	wire [2:0] out_tst ;
	reg [7:0] in_tst ;

	encoder8_3 DUT(in_tst, out_tst) ;

	initial
		begin: initial_block
			in_tst = 8 'd32 ;
			#50 in_tst = 8 'd4 ;
			#50 in_tst = 8 'd1 ;
			#50 in_tst = 8 'd128 ;
			#50 in_tst = 8 'd64 ;
			#50 in_tst = 8 'd8 ;
			#50 in_tst = 8 'd16 ;
			#50 in_tst = 8 'bx1001xzx ;
		end: initial_block

endmodule



			
