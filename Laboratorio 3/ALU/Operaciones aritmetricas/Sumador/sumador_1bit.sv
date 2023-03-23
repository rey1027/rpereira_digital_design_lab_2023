module sumador_1bit( input logic a, input logic b, input logic caIn, output logic suma, output logic caOut);
 wire [ 1:4] N;
 
 xor(N1,a,b);
 xor(suma,N1,caIn);
 and(N3,N1,caIn);
 and(N4,a,b);
 or(caOut,N3,N4);
		
endmodule 