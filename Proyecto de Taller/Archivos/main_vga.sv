module main_vga(clk,clk_25,rst,red,green,blue,vga_hsync,vga_vsync,sync_blank,sync_b);
	input clk,rst;
	output logic [7:0] red, blue, green; 
	output logic vga_hsync,vga_vsync,sync_blank,sync_b; //Control de signal
	logic [9:0]hs;
	logic [9:0]vs;
	output logic clk_25;
	
	clkdiv div(clk,clk_25);
			
	vgaController cgr(clk_25,vga_hsync,vga_vsync,sync_blank,sync_b,hs,vs);
	
	
	screenDraw sd2(rst,hs,vs,red,green,blue);
	
	
endmodule