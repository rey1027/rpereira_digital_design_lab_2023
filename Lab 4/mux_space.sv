module mux_space( input logic [15:0]state,
						input logic inpos,
						output logic [23:0]rgb
						);
						
		logic [23:0]out_rgb;
		//logic inpos;
		 
		//assign inpos = ((minx < hs)&(maxx > hs)&(miny < vs)&(maxy > vs))? 1:0;
		
		always @(*)
			begin
				case({state})
				
				16'b0000 : out_rgb <= 24'b000000000000000000000000; //0
			   16'h0002 : out_rgb <= 24'b111111110000000000000000; //2     rojo
			   16'h0004 : out_rgb <= 24'b111100000001000011111111; //4     cian claro
				16'h0008 : out_rgb <= 24'b111111111100011100110000; //8     amarillo
				16'h0010 : out_rgb <= 24'b110000000000000011100000; //16    morado oscuro
				16'h0020 : out_rgb <= 24'b111111111001100110011001; //32    rosado
				16'h0040 : out_rgb <= 24'b111111111000000000000000; //64    naranja
				16'h0080 : out_rgb <= 24'b011111001011001101110001; //128   medium sea green
				16'h0100 : out_rgb <= 24'b110011000011001111001100; //256   verde claro
				16'h0200 : out_rgb <= 24'b000000000000000011111111; //512   azul
				16'h0400 : out_rgb <= 24'b111111110000000011111111; //1024  olivo?
				16'h0800 : out_rgb <= 24'b101110001000011000001011; //2048  oro oscuro?
				                       //012345670123456701234567 
				default : out_rgb <= 24'b000000000000000000000000;
				
				endcase
			end
			
		assign rgb = out_rgb; 
			
endmodule
						
						