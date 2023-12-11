module fa_4bit_using_fa_1bit_tst() ;

	wire [3:0] sum_tst ;
	wire cout_tst ;
	reg [3:0] a_tst, b_tst ;
	reg cin_tst ;

	fa_4bit_using_fa_1bit DUT(a_tst, b_tst, cin_tst, sum_tst, cout_tst) ;

	initial
		begin
			{a_tst, b_tst, cin_tst} = 9 'd0 ;
			#50 {a_tst, b_tst, cin_tst} = 9 'd2 ;
			#50 {a_tst, b_tst, cin_tst} = 9 'd4 ;
			#50 {a_tst, b_tst, cin_tst} = 9 'd17 ;
			#50 {a_tst, b_tst, cin_tst} = 9 'd400 ;
			#50 {a_tst, b_tst, cin_tst} = 9 'd328 ;
			#50 {a_tst, b_tst, cin_tst} = 9 'd509 ;
		end

endmodule
			
