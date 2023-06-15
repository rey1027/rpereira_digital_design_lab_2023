module Pantalla(
	input logic reset,
	input logic [15:0] matriz [0:3][0:3],
	input logic [9:0]hs,vs,
	output logic [7:0] r,g,b);
	
	
	logic [15:0] states[15:0]; //= '{16{16'h0004}};
	logic [23:0] rgb[15:0];
	logic [15:0]pos;
	
	
	
	
	tablero tb(matriz,states);
	//llamar a la logica para asignar valores
	
	CheckPos check(hs,vs,pos);
					
	mux_space space0(states[0],pos[0],rgb[0]);
	
	mux_space space1(states[1],pos[1],rgb[1]);
	
	mux_space space2(states[2],pos[2],rgb[2]);
	
	mux_space space3(states[3],pos[3],rgb[3]);
	
	mux_space space4(states[4],pos[4],rgb[4]);
	
	mux_space space5(states[5],pos[5],rgb[5]);
	
	mux_space space6(states[6],pos[6],rgb[6]);
	
	mux_space space7(states[7],pos[7],rgb[7]);
	
	mux_space space8(states[8],pos[8],rgb[8]);
	
	mux_space space9(states[9],pos[9],rgb[9]);
	
	mux_space space10(states[10],pos[10],rgb[10]);
	
	mux_space space11(states[11],pos[11],rgb[11]);
	
	mux_space space12(states[12],pos[12],rgb[12]);
	
	mux_space space13(states[13],pos[13],rgb[13]);
	
	mux_space space14(states[14],pos[14],rgb[14]);
	
	mux_space space15(states[15],pos[15],rgb[15]);
	
	mux_dibujar mux_dib(rgb[0],rgb[1],rgb[2],rgb[3],rgb[4],rgb[5],rgb[6],rgb[7],rgb[8],rgb[9],rgb[10],rgb[11],
							  rgb[12],rgb[13],rgb[14],rgb[15],pos[0],pos[1],pos[2],pos[3],pos[4],pos[5],
							  pos[6],pos[7],pos[8],pos[9],pos[10],pos[11],pos[12],pos[13],pos[14],pos[15],r,g,b);
	
endmodule