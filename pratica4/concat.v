module concat(row, column, out);
					
	input [9:0] row;
	input [9:0] column;
	output reg [14:0] out;
	
	always @(row or column)begin
		out = {row[6:0], column[7:0]};
	end
					
endmodule