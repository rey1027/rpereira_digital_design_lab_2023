module restador_1bit(input logic a, input logic b, input logic cin, output logic res, output logic cout);
wire [0:3] R;

 xor(R0,cin,b);
 xor(R1,a,R0);
 xor(res,R1,cin);
 and(R2,R1,cin);
 and(R3,a,b);
 or(cout,R2,R3);

endmodule