module half_adder( a_in, b_in, sum, carry ) ;
	
	input a_in, b_in ;
	output sum, carry ;

	assign sum = a_in ^ b_in ;
	assign carry = a_in & b_in ;

endmodule
