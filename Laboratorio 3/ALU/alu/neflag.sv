module neflag(input logic [3 : 0] s,input logic fn, output logic out);
  
  always @ (*) begin
      if (s == 4'b0001) begin 
			out = fn;
			end 
		else begin
			out = 0;
			end
    end

endmodule