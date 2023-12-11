module ha_beh( a, b, s, cout) ;

	input a, b ;
	output s, cout ;

	reg s, cout ;

	always @(a, b)
		begin
			if (a == 0 && b == 0)
				{cout, s} = 2 'b00 ;

			else if (a == 0 && b == 1)
				{cout, s} = 2 'b01 ;

			else if (a == 1 && b == 0)
				{cout, s} = 2 'b01 ;

			else if (a == 1 && b == 1)
				{cout, s} = 2 'b11 ;

			else
				{cout, s} = 2 'bxx ;
		end 

endmodule
