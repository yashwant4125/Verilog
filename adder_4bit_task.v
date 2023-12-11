module adder_4bit_task1(a , b, cin, sum, cout) ;

	input [3:0] a, b ;
	input cin ;

	output reg [3:0] sum ;
	output reg cout ;

	task adder ;
		{cout, sum} = a + b + cin ;

	endtask

	always @(a , b, cin)
		adder ;

endmodule
