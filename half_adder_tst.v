module ha_tst() ;
	
	wire sum_tst, carry_tst ;
	reg a_tst, b_tst ;

	ha_beh DUT(a_tst, b_tst, sum_tst, carry_tst) ;

	initial
		begin
			{a_tst, b_tst} = 2 'b00 ;
			#50 {a_tst, b_tst} = 2 'b01 ;
			#50 {a_tst, b_tst} = 2 'b10 ;
			#50 {a_tst, b_tst} = 2 'b11 ;
			#50 {a_tst, b_tst} = 2 'bxx ;
			#50 {a_tst, b_tst} = 2 'bxz ;
		end

endmodule

