module vga(clk,clk_25,rst,matriz,red,green,blue,vga_hsync,vga_vsync,sync_blank,sync_b);
	input clk,rst;
	input logic [15:0] matriz [0:3][0:3];
	output logic [7:0]red,blue,green; // COLOR
	output logic vga_hsync,vga_vsync,sync_blank,sync_b; //Control de signal
	logic [9:0]hs;
	logic [9:0]vs;
	output logic clk_25;
	
	
	//logic [15:0] matriz [0:3][0:3];
	
	//assign matriz[0][0] = 16'h0002;
   //assign matriz[0][1] = 16'h0004;
   //assign matriz[0][2] = 16'h0008;
   //assign matriz[0][3] = 16'h0000;
    
   //assign matriz[1][0] = 16'h0010;
   //assign matriz[1][1] = 16'h0020;
   //assign matriz[1][2] = 16'h0040;
   //assign matriz[1][3] = 16'h0080;
    
   //assign matriz[2][0] = 16'h0000;
   //assign matriz[2][1] = 16'h0000;
   //assign matriz[2][2] = 16'h0000;
   //assign matriz[2][3] = 16'h0100;
    
   //assign matriz[3][0] = 16'h0200;
   //assign matriz[3][1] = 16'h0400;
   //assign matriz[3][2] = 16'h0000;
   //assign matriz[3][3] = 16'h0800;
	
	clkdiv div(clk,clk_25);
			
	ControladorVGA cvga(clk_25,vga_hsync,vga_vsync,sync_blank,sync_b,hs,vs);
	
	Pantalla pintor(rst,matriz,hs,vs,red,green,blue);
	
endmodule
		
			