 module adder_4bit_function_tst() ;

	reg [3:0] a, b ;
	reg cin ;

	wire [3:0] sum ;
	wire cout ;

	adder_4bit_function1  DUT(a , b, cin, sum, cout) ;

	initial
		begin
			a = 4 'b0010 ;
			b = 4 'b0110 ;
			cin = 1 'b0 ;

			#50 a = 4 'b0110 ;
			b = 4 'b0100 ;
			cin = 1 'b1 ;

			#50 a = 4 'b0100 ;
			b = 4 'b0101 ;
			cin = 1 'b0 ;

			#50 a = 4 'b1110 ;
			b = 4 'b0000 ;
			cin = 1 'b1 ;	
		end			

endmodule
