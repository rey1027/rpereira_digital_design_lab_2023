module aleatorio_tb;

    // Inputs
    reg clk;
    reg reset;
    reg [15:0] matrix_in[0:3][0:3]='{default:0};
	 
	 

    // Outputs
    wire [15:0] matrix_out[0:3][0:3];

    // Instantiate the Unit Under Test (UUT)
    pop_random uut (
        .clk(clk),
        .reset(reset),
        .matrix_in(matrix_in),
        .matrix_out(matrix_out)
    );
	 
 initial begin
  clk = 0;
  forever
   #50 clk = ~clk;
  end
  
 initial begin
  // Initialize Inputs
  
  reset = 0;

  // Wait 100 ns for global reset to finish
  #100;
      reset = 1;
  #200;
  reset = 0;
  // Add stimulus here

 end
 

endmodule
