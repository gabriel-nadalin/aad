module muxecp(a, b, sel, out);
	input a;
	input b;
	input sel;
	output wire out;
	
	assign out = (sel == 0) ? a : b;
endmodule