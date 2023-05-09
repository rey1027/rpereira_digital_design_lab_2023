module mux_dibujar(

	input logic [23:0]rgb0,rgb1,rgb2,rgb3,rgb4,rgb5,rgb6,rgb7,rgb8,rgb9,rgb10,rgb11,rgb12,rgb13,rgb14,rgb15,
	input logic pos0,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,pos10,pos11,pos12,pos13,pos14,pos15,
	output logic [7:0]r,g,b

);

	logic[23:0]out_rgb;
	
	always @(pos0 or pos1 or pos2 or pos3 or pos4 or pos5 or pos6 or pos7 or pos8 or
				pos9 or pos10 or pos11 or pos12 or pos13 or pos14 or pos15)
				
		begin   // 0    1    2    3     4   5    6    7    8    9    A     B     C     D     E     F     G
			case ({pos0,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,pos10,pos11,pos12,pos13,pos14,pos15})
			
			17'b00000000000000000 : out_rgb     <= 24'b111111111111111111111111;
			17'b10000000000000000 : out_rgb     <= 24'b000000000000000000000000;
			17'b01000000000000000 : out_rgb     <= rgb0;//24'b000000000000000011111111;
			17'b00100000000000000 : out_rgb     <= rgb1;
			17'b00010000000000000 : out_rgb     <= rgb2;
			17'b00001000000000000 : out_rgb     <= rgb3;
			17'b00000100000000000 : out_rgb     <= rgb4;
			17'b00000010000000000 : out_rgb     <= rgb5;
			17'b00000001000000000 : out_rgb     <= rgb6;
			17'b00000000100000000 : out_rgb     <= rgb7;
			17'b00000000010000000 : out_rgb     <= rgb8;
			17'b00000000001000000 : out_rgb     <= rgb9;
			17'b00000000000100000 : out_rgb     <= rgb10;
			17'b00000000000010000 : out_rgb     <= rgb11;
			17'b00000000000001000 : out_rgb     <= rgb12;
			17'b00000000000000100 : out_rgb     <= rgb13;
			17'b00000000000000010 : out_rgb     <= rgb14;
			17'b00000000000000001 : out_rgb     <= rgb15;
			  //0123456789ABCDEFG
			default  : out_rgb <= 24'b000000000000000000000000;
			
			endcase
		end
		
	assign r = out_rgb[23:16];
	assign g = out_rgb[15:8];
	assign b = out_rgb[7:0];
	
endmodule
