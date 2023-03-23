module tb_restador_n;
  
    parameter N =4 ;
    
    reg [N-1:0] A;
    reg [N-1:0] B;
    wire [N-1:0] res;
    
    restador_n #(.N(N)) dut (.A(A),.B(B),.caIn(0),.res(res),. caOut(caOut) );
    
    initial begin
        $monitor("A=%b, B=%b, res=%b, caOut=%b", A, B, res, caOut);
        A = 4'b0011;
        B = 4'b0010;
        #20;
        A = 4'b0011;
        B = 4'b0011;
        #20;
        A = 4'b0001;
        B = 4'b0011;
        #20;
        A = 4'b0111;
        B = 4'b0100;
        #20;
        A = 4'b1001;
        B = 4'b1010;
        #20;
		  A = 4'b1110;
        B = 4'b1111;
        #20;
		  
        $finish;
    end
    
endmodule