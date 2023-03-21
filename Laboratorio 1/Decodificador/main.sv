module main(A,B,C,D,seg);
	input logic A,B,C,D;
	output reg [6:0] seg;
	logic S0,S1,S2,S3,S4;
	
	decodificador D1(.A(A), .B(B), .C(C), .D(D), .S0(S0), .S1(S1), .S2(S2), .S3(S3), .S4(S4));
	
	bcd_to_7seg BD7(.bcd({S1,S2,S3,S4}),.seg(seg));
	
endmodule