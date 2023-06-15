module main(input clk,
				input rst,
				input boton,
				output logic vgaclk,
				output logic vga_hsync, vga_vsync,
				output logic sync_b, sync_blank,
				output logic [7:0] red,green,blue);
				
				logic MemWrite;
				logic [31:0] RAMout[255:0];
				logic [31:0] ROMout[255:0];
				
				
				top t1(clk, reset, WriteData, DataAdr, MemWrite, RAMout, ROMout);
				
				main_vga vga1(clk,vgaclk,rst,red,green,blue,vga_hsync,vga_vsync,sync_blank,sync_b);
				
endmodule