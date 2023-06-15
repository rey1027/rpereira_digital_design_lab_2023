module sumador_n #(parameter n=4)(input [n-1:0] A, input [n-1:0] B, input logic caIn ,output [n-1:0] sum, output logic caOut );
  
  
    wire [n:0] carry;
	 assign carry[0] = caIn;
    
	 genvar i;
    generate
        for (i = 0; i < n; i = i + 1) begin : sumador
            sumador_1bit dut (A[i], B[i],carry[i], sum[i], carry[i+1]);	
				
        end
    endgenerate
	 assign caOut =  carry[n];
	 

  
endmodule