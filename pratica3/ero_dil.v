module ero_dil(q, sel, out);
	input [8:0] q;
	input sel;
	output reg out;
	
	always @q begin
		if (sel == 0)
			out = q[0] || q[1] || q[2] || q[3] || q[4] || q[5] || q[6] || q[7] || q[8];
		else
			out = q[0] && q[1] && q[2] && q[3] && q[4] && q[5] && q[6] && q[7] && q[8];
	end
		
endmodule