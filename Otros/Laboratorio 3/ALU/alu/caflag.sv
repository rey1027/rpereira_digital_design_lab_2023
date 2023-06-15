module caflag(input logic [3 : 0] s,input logic fc, output logic out);
  
  always @ (*) begin
      if (s == 4'b0000) begin 
			out = fc;
			end 
		else begin
			out = 0;
			end
    end

endmodule