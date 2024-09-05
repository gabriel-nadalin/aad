module janela(column, row, out);
    input [9:0] column;
    input [9:0] row;
    output reg out;

    always @(column or row) begin
        if (column > 'd255 || row > 'd127) 
            out = 0;
        
        else 
            out = 1;
        
    end

endmodule