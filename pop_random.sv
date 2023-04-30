module pop_random(
    input clk,
    input reset,
    input logic [15:0] matrix_in[0:3][0:3],
    output logic [15:0] matrix_out[0:3][0:3]
);
			
	 int my_output;
	 reg [15:0] matrix2[0:3][0:3];
	
    lfsr_0_3 my_lfsr(
        .clk(clk),
        .reset(reset),
        .rand_out(my_output)
    );
	 
	 int row,col;
	 always @(posedge clk) begin 
	 
		 row = my_output;
		
		 col = my_output;
		
		 matrix2=matrix_in;
	
		if(matrix_in[row][col]==16'h0000)begin
		
				matrix2[row][col]=16'h0002;
		end
		matrix_out = matrix2;
		
	 end
	 
endmodule

