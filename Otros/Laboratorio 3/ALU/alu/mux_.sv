module mux_#(parameter N = 4)(
				input logic [3 : 0] s,
				input logic [N - 1 : 0] e0,e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,
				output logic [N - 1 : 0] out );

		
always_comb
	case (s)
	4'b0000 : out = e0;
	4'b0001 : out = e1;
	4'b0010 : out = e2;
	4'b0011 : out = e3;
	4'b0100 : out = e4;
	4'b0101 : out = e5;
	4'b0110 : out = e6;
	4'b0111 : out = e7;
	4'b1000 : out = e8;
	4'b1001 : out = e9;
	4'b1010 : out = e10;
	4'b1011 : out = e11;
	4'b1100 : out = e12;
	4'b1101 : out = e13;
	4'b1110 : out = e14;
	4'b1111 : out = e15;
	endcase
	
endmodule