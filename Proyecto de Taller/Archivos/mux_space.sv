module mux_space( input logic [3:0]state,
						input logic inpos,
						output logic [23:0]rgb
						);
						
		logic [23:0]out_rgb;
		
		
		always @(*)
			begin
				case({state})
				 
				4'b0001 : out_rgb <= 24'b100101111001011110010111; 
				default : out_rgb <= 24'b000000000000000000000000;
				
				endcase
			end
			
		assign rgb = out_rgb; 
			
endmodule