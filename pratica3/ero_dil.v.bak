module mask(q, sel, out);
	input [8:0] q;
	input sel;
	output out;
	
	if sel = 0
		out = q[0] || q[1] || q[2] || q[3] || q[4] || q[5] || q[6] || q[7] || q[8]
	else
		out = q[0] && q[1] && q[2] && q[3] && q[4] && q[5] && q[6] && q[7] && q[8]
		
endmodule