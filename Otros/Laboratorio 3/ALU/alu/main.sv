module main #(parameter N = 4)(
		input logic [N-1 : 0] a,
		input logic [N-1 : 0] b,
		input logic [3 : 0] s,
		output reg [6:0] seg,
		output logic fn,fz,fo,fc);
		
	logic [N-1 : 0] out;
	
	alu #(N) alu1(a,b,s,out,fn,fz,fo,fc);
	bcd_to_7seg BD7(.bcd(out),.seg(seg));
	
endmodule