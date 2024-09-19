module janela(column, row, out);
    input [9:0] column;
    input [9:0] row;
    output reg out;

    always @(column or row) begin
        if (column > 'd63 || row > 'd63) 
            out = 0;
        else 
            out = 1;
    end

endmodule