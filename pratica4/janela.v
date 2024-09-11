module janela(column, row, out);
    input [9:0] column;
    input [9:0] row;
    output reg out;

    always @(column or row) begin
        if (column > 'd61 || row > 'd64) 
            out = 0;
        else 
            out = 1;
    end

endmodule