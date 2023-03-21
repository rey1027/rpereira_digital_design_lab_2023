module main(input  logic clk,reset,s,r,d,a,
				output logic [6:0] lsb,msb);
				
				logic [5:0] c;
	
	contador #(6) cont(.clk(clk),.reset(reset),.s(s),.r(r),.d(d),.a(a),.c(c));
	

	
	bintosseg ls(.bin(c[3:0]),.sseg(lsb));
	bintosseg ms(.bin(c[5:4]),.sseg(msb));
	
endmodule