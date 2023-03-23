module restador_n #(parameter N=4)(input [N-1:0] A, input [N-1:0] B, input logic caIn ,output [N-1:0] res, output logic caOut );
  
  
    wire [N:0] carry;
    assign carry[0] = caIn;
    
    
    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : restador
            restador_1bit dut (A[i], B[i], carry[i], res[i], carry[i+1]);    
        end
    endgenerate
    assign caOut = carry[N];
	 

  
endmodule