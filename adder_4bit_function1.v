module adder_4bit_function1(a , b, cin, sum, cout) ;

	input [3:0] a, b ;
	input cin ;

	output reg [3:0] sum ;
	output reg cout ;

	function [4:0] result ;
		input [3:0] a_t, b_t ;
		input cin_t ;

		  result = a_t + b_t + cin_t ;

	endfunction

	always @(a , b, cin)
		 {cout, sum}= result(a , b, cin) ;

endmodule
