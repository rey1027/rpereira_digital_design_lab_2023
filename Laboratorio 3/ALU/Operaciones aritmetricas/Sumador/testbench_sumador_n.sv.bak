module testbench_sumador_n;
  
   parameter n =4 ;
    
    reg [n-1:0] A;
    reg [n-1:0] B;
    wire [n-1:0] sum;
    
    sumador_n #(.n(n)) dut (.A(A),.B(B),.caIn(0),.sum(sum),. caOut(caOut) );
    
    initial begin
        $monitor("A=%b, B=%b, sum=%b, caOut=%b", A, B, sum, caOut);
        A = 4'b0001;
        B = 4'b0010;
        #10;
        A = 4'b0011;
        B = 4'b0011;
        #10;
        A = 4'b1111;
        B = 4'b0001;
        #10;
        A = 4'b1111;
        B = 4'b1000;
        #10;
        $finish;
    end
    
endmodule