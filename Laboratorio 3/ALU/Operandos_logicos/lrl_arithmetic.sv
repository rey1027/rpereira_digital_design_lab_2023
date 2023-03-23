module lrl_arithmetic#(parameter N=4) (input logic [N-1:0] data_in, input logic [N-1:0] shift_amount, output logic [N-1:0] data_out);

  logic [N-1:0] shifted_data;

  always @ (*) begin
    for (int i = 0; i < N; i = i + 1) begin
      if (i < N - shift_amount) begin
        shifted_data[i] = data_in[i + shift_amount];
      end else begin
        shifted_data[i] = data_in[N-1];
      end
    end
  end

  assign data_out = shifted_data;

endmodule