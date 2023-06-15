module n_not_gate #(parameter N = 6)(
    input [N-1:0] a,
    output [N-1:0] output_1
);

assign output_1= ~a; 

endmodule
