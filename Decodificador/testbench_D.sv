module testbench_D;
  reg A, B, C, D;
  wire S0, S1, S2, S3, S4;

  decodificador dut(.A(A), .B(B), .C(C), .D(D), .S0(S0), .S1(S1), .S2(S2), .S3(S3), .S4(S4));

  initial begin
    A = 0; B = 0; C = 0; D = 0;
    #10;
    A = 0; B = 0; C = 0; D = 1;
    #10;
    A = 0; B = 0; C = 1; D = 0;
    #10;
    A = 0; B = 0; C = 1; D = 1;
    #10;
    A = 0; B = 1; C = 0; D = 0;
    #10;
    A = 0; B = 1; C = 0; D = 1;
    #10;
    A = 0; B = 1; C = 1; D = 0;
    #10;
    A = 0; B = 1; C = 1; D = 1;
    #10;
    A = 1; B = 0; C = 0; D = 0;
    #10;
    A = 1; B = 0; C = 0; D = 1;
    #10;
    A = 1; B = 0; C = 1; D = 0;
    #10;
    A = 1; B = 0; C = 1; D = 1;
    #10;
    A = 1; B = 1; C = 0; D = 0;
    #10;
    A = 1; B = 1; C = 0; D = 1;
    #10;
    A = 1; B = 1; C = 1; D = 0;
    #10;
    A = 1; B = 1; C = 1; D = 1;
    #10;
    
  end

endmodule



