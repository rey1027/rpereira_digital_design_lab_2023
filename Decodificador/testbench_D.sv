module testbench_D;
  reg A, B, C, D;
  wire S0, S1, S2, S3, S4;

  decodificador dut(.A(A), .B(B), .C(C), .D(D), .S0(S0), .S1(S1), .S2(S2), .S3(S3), .S4(S4));
   reg clk = 0;
   always #10 clk = ~clk;

  initial begin
	
    A = 0; B = 0; C = 0; D = 0;
    #20;
    A = 0; B = 0; C = 0; D = 1;
    #20;
    A = 0; B = 0; C = 1; D = 0;
    #20;
    A = 0; B = 0; C = 1; D = 1;
    #20;
    A = 0; B = 1; C = 0; D = 0;
    #20;
    A = 0; B = 1; C = 0; D = 1;
    #20;
    A = 0; B = 1; C = 1; D = 0;
    #20;
    A = 0; B = 1; C = 1; D = 1;
    #20;
    A = 1; B = 0; C = 0; D = 0;
    #20;
    A = 1; B = 0; C = 0; D = 1;
    #20;
    A = 1; B = 0; C = 1; D = 0;
    #20
    A = 1; B = 0; C = 1; D = 1;
    #20;
    A = 1; B = 1; C = 0; D = 0;
    #20;
    A = 1; B = 1; C = 0; D = 1;
    #20;
    A = 1; B = 1; C = 1; D = 0;
    #20;
    A = 1; B = 1; C = 1; D = 1;
    #20; $finish;
    end
    
  
  // Monitor
    always @(posedge clk) begin
        $display("Input: A=%b, B=%b, C=%b, D=%b, Output: S0=%b, S1=%b, S2=%b, S3=%b, S4=%b", A, B, C, D,S0, S1, S2, S3, S4);
    end

endmodule



