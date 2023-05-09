module matrix_4_4 (
    input logic [15:0] data_in,
    input integer  row_sel,
    input integer col_sel,
    output logic [15:0] matrix[0:3][0:3]
);



   always_comb begin
        matrix[row_sel][col_sel] = data_in;
    end


endmodule
