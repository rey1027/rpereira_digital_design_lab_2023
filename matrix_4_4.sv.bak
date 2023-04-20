module matrix_4_4 (
    input logic [15:0] data_in,
    input integer  row_sel,
    input integer col_sel,
    output logic [15:0] matrix[0:3][0:3]
);

    logic [15:0] matrix_actual[0:3][0:3];

    always_comb begin
        for (int i = 0; i < 4; i++) begin
            for (int j = 0; j < 4; j++) begin
                if (i == row_sel && j == col_sel) begin
                    matrix[i][j] = data_in;
                    matrix_actual[i][j] = data_in;
                end else begin
                    matrix[i][j] = matrix_actual[i][j];
                end
            end
        end
    end

endmodule
