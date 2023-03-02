module decodificador(A,B,C,D,S0,S1,S2,S3,S4);

 input A,B,C,D;
 output S0,S1,S2,S3,S4;
 
 assign S0 =((A & B) | (A & C));
 assign S1 =(A & ~B & ~C);
 assign S2 =(( ~A & B) | (C & B));
 assign S3 =((A & B & ~C)| ( ~A & C));
 assign S4 = D;	
	
endmodule 
