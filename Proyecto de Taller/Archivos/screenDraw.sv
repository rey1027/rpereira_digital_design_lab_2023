module screenDraw(
	input logic reset,
	input logic [9:0]hs,vs,
	output logic [7:0] r,g,b);
	
	logic [7:0] states[24:0]='{25{8'b000110001}};

	logic pos;
	
	
	//tablero tb(matriz,states);
	//llamar a la logica para asignar valores
	
	CheckPos check(hs,vs,pos);
	
	always@(*)
	begin
	if (pos==1)
			begin	
				for (int j = 0; j < 25; j = j + 1) 
					begin
								  r = states[j];
								  g = states[j];
								  b = states[j];
					end
			end 
			else
			begin 
			   r = 8'b00000000;
				g = 8'b00000000;
				b = 8'b00000000;
			
			end
	
	end
	//mux_dibujar mux_dib(states,rgb,pos,r,g,b);
	
endmodule
