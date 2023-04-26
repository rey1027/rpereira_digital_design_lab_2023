//Este modulo sirve para generar numeros aleatorios de entre 0 y 3 porque en Verilog no se puede usar $random o cualquier
//variacion de este debido a que cuando se pase a hardware este no va compilar
module lfsr_0_3(
    input clk,
    input reset,
    output int rand_out
);

reg [2:0] state;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= 3'b111; // initialize with all ones
        rand_out <= 2'b0; // initialize output to 0
    end else begin
        state <= {state[1:0], state[2] ^ state[1]}; // LFSR feedback
        rand_out <= state[1:0]; // output the least significant 2 bits
    end
end

endmodule
