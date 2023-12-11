module mux2x1_beh(data1, data2, sel, yout) ;

	input data1, data2, sel ;
	output yout ;
	
	reg yout ;

	always @(data1, data2, sel) 
		begin: always_block
			if(sel == 1 'b0)
				yout = data1 ;

			else if(sel == 1 'b1)
				yout = data2 ;

			else
				yout = 1 'bx ;
		end: always_block

endmodule


