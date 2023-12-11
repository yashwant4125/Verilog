module decoder3_8_tst() ;

	wire [7:0] out_tst ;
	reg [2:0] in_tst ;

	decoder3_8 DUT(in_tst, out_tst) ;

	initial
		begin: initial_block
			in_tst = 3 'd2 ;
			#50 in_tst = 3 'd4 ;
			#50 in_tst = 3 'd4 ;
			#50 in_tst = 3 'd0 ;
			#50 in_tst = 3 'd3 ;
			#50 in_tst = 3 'd6 ;
			#50 in_tst = 3 'd7 ;
			#50 in_tst = 3 'bxzx ;
		end: initial_block

endmodule



			