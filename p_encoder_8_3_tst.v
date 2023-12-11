module p_encoder_8_3_tst() ;

	wire [2:0] out_tst ;
	wire v_out_tst ;
	reg en_tst ;
	reg [7:0] in_tst ;

	p_encoder_8_3 DUT(en_tst, in_tst, v_out_tst, out_tst) ;

	initial
		begin: initial_block
			en_tst = 1 'b1 ;
			in_tst = 8 'd39 ;
			#50 in_tst = 8 'd24 ;
			#50 in_tst = 8 'd172 ;
			#50 in_tst = 8 'd108 ;
			#50 in_tst = 8 'd6 ;
			en_tst = 1 'b0 ;
			#50 in_tst = 8 'd1 ;
			en_tst = 1 'b1 ;
			#50 in_tst = 8 'd84 ;
			#50 in_tst = 8 'bx1001xzx ;
		end: initial_block

endmodule



			
