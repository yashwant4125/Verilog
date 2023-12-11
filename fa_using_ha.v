module fa_using_ha(a, b, c_in, sum, c_out) ;

	input a, b, c_in ;
	output sum, c_out ;

	wire t1, t2, t3 ;

	half_adder ha0(a, b, t1, t2) ;
	half_adder ha1(t1, c_in, sum, t3) ;
	or R1(c_out, t2, t3) ;

endmodule


