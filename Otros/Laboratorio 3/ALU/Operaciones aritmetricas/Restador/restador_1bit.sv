module restador_1bit(input logic a, input logic b, input logic caIn, output logic res, output logic caOut);
 wire [ 1:3] R;
 wire [0:1] no;
 
 xor(R1,a,b);
 xor(res,R1,caIn);
 not(no[0],R1);
 and(R2,no[0],caIn);
 not(no[1],a);
 and(R3,no[1],b);
 or(caOut,R2,R3);


endmodule