module select(raw_img, gl, sel, clk, out);
	input raw_img;
	input gl;
	input sel;
	input clk;
	output reg out;
	
	always @clk begin
		if (sel == 0)
			out = raw_img;
		else
			out = gl;
	end
endmodule