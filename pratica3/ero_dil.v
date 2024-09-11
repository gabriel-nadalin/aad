module ero_dil(q1, q2, q3, sel, out);
	input [2:0] q1;
	input [2:0] q2;
	input [2:0] q3;
	input sel;
	output reg out;
	
	// sempre que 'q1' eh atualizado
	always @q1 begin
		// dilatacao
		if (sel == 0)
			out = q1[2] | q1[1] | q1[0] | q2[2] | q2[1] | q2[0] | q3[2] | q3[1] | q3[0];
		// erosao
		else
			out = q1[2] & q1[1] & q1[0] & q2[2] & q2[1] & q2[0] & q3[2] & q3[1] & q3[0];
	end
		
endmodule