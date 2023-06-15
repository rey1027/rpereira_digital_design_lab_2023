module zeroflag #(N)(input logic [N-1 : 0] in, output logic out);
  
  always @ (*) begin
    for (int i = 0; i < N; i = i + 1) begin
      if (in[i] == 1) begin 
			out = 0;
			break;
			end 
		else begin
			out = 1;
			end
    end
  end

endmodule