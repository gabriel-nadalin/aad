module concat(row, column, out);
					
	input [9:0] row;
	input [9:0] column;
	output reg [11:0] out;
	
	always @(row or column)begin
		out = {row[5:0], column[5:0]};
	end
					
endmodule