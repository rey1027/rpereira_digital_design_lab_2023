module restador_n #(parameter n=4)(input [n-1:0] A, input [n-1:0] B, input logic caIn ,output [n-1:0] res, output logic caOut );
  
  
    wire [n:0] carry;
	 wire ncout;
	 assign carry[0] = caIn;
    
	 genvar i;
    generate
        for (i = 0; i < n; i = i + 1) begin : restador
            restador_1bit dut (A[i], B[i],carry[i], res[i], carry[i+1]);	
				
        end
    endgenerate
	 not(ncout,carry[n]);

	 assign caOut =ncout;
	 

  
endmodule