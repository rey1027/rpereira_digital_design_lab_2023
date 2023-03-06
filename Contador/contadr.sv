module contadr#(parameter N = 4 ) 
						(input  logic clk,reset,s,r,d,a,
						 output logic [N-1 : 0] c);
	 
    always_ff @(posedge clk or posedge reset) begin
		if (reset) c = 2**N - 1;
		else if (a === 0) 
		begin 
			if (s === 0) c = c + 1;
			else if (r === 0) c = c - 1;
		end
		else if (a)
		begin 
			if (d === 0) c = c - 1;
		end	
	 end  
endmodule