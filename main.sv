module main(input  logic reset,s,r,d,a,
				output logic [6:0] msb,lsb);
				
				logic [5:0] c;
	
	contador #(6) cont(.reset(reset),.s(s),.r(r),.d(d),.a(a),.c(c));
	
	bintosseg ms(.bin(c[5:4]),.sseg(msb));
	
	bintosseg ls(.bin(c[3:0]),.sseg(lsb));
	
endmodule