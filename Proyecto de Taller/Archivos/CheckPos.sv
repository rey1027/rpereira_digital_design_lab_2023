module CheckPos( input logic [9:0] hs,vs,
					  output logic imagen);
					  
					  
		assign imagen = ((192   < hs)&(448 > hs)&(112   < vs)&(368 > vs))? 1:0;
		
		
endmodule
