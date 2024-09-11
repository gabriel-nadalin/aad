module gol(q1, q2, q3, out);
	input [2:0] q1;
	input [2:0] q2;
	input [2:0] q3;
	output reg out;
	
	// sempre que 'q1' eh atualizado
	always @q1 begin
		vizinhos = q1[2] + q1[1] + q1[0] + q2[2] + q2[1] + q2[0] + q3[2] + q3[1] + q3[0];
		if (q2[1] == 0)
			if (vizinhos == 3)
				out = 1;
			else
				out = 0;
		else
			if (vizinhos == 2 || vizinhos == 3)
				out = 1;
			else
				out = 0;
	end
		
endmodule