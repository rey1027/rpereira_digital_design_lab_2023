module mux_dibujar(
   input logic [7:0] matriz [0:7][0:7],
	input logic [23:0]rgb,
	input logic pos,
	output logic [7:0]r,g,b

);

	logic[23:0]out_rgb;
	
	always @(pos or matriz )
				
		begin  
			if (pos==1)
			begin
				for (int i = 0; i < 8; i = i + 1) begin
					for (int j = 0; j < 8; j = j + 1) begin
					  // Obtener el valor en la posición [i][j]
					  r = matriz[i][j];
					  g = matriz[i][j];
					  b = matriz[i][j];
					 end
				end
				//out_rgb <=24'b111111111111111111111111;
				//r = out_rgb[23:16];
				//g = out_rgb[15:8];
				//b = out_rgb[7:0];
					 
			end else 
			begin 
				out_rgb <= 24'b000000000000000000000000;
				r = out_rgb[23:16];
				g = out_rgb[15:8];
				b = out_rgb[7:0];
			end 
		end
		
	
	
endmodule
