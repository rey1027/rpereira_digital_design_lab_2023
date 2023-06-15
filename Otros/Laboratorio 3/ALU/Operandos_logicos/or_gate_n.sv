module or_gate_n #(parameter N = 6)(
  input logic [N-1:0] a,
  input logic [N-1:0] b,
  output logic [N-1:0] output_1
);

  logic [N-1:0] and_out;
  
  // Instancia N módulos OR
  genvar i;
  generate
    for (i = 0; i < N; i = i + 1) begin: or_gen
      or_gate or_inst(
        .a(a[i]),
        .b(b[i]),
        .out(and_out[i]));
    end
  endgenerate
  
  genvar k;
  generate
    for (k = 0; k < N; k = k + 1) begin: output_gen
      assign output_1[k]= and_out[k];
    end
  endgenerate
endmodule