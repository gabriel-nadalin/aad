module select(raw_img, gl, sel, out);
	input raw_img;
	input gl;
	input sel;
	output reg out;
	
	always @raw_img begin
		if (sel == 0)
			out = raw_img;
		else
			out = gl;
	end
endmodule