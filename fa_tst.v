module fa_tst() ;

	wire sum_tst, c_out_tst ;
	reg a_tst, b_tst, cin_tst ;

	fa_using_ha DUT(a_tst, b_tst, cin_tst, sum_tst, c_out_tst) ;

	initial
		begin
			{a_tst, b_tst, cin_tst} = 3 'd0 ;
			#50 {a_tst, b_tst, cin_tst} = 3 'd1 ;
			#50 {a_tst, b_tst, cin_tst} = 3 'd2 ;
			#50 {a_tst, b_tst, cin_tst} = 3 'd3 ;
			#50 {a_tst, b_tst, cin_tst} = 3 'd4 ;
			#50 {a_tst, b_tst, cin_tst} = 3 'd5 ;
			#50 {a_tst, b_tst, cin_tst} = 3 'd6 ;
			#50 {a_tst, b_tst, cin_tst} = 3 'd7 ;
		end

endmodule


