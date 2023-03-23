module tb_restador_n;
  
   parameter n =4 ;
    
    reg [n-1:0] A;
    reg [n-1:0] B;
    wire [n-1:0] res;
    
    restador_n #(.n(n)) dut (.A(A),.B(B),.caIn(1),.res(res),. caOut(caOut) );
    
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
        $finish;
    end
    
endmodule