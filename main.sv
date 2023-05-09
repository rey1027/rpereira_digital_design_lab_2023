module main(
				input logic ar,
				input logic ab,
				input logic iz,
				input logic de,
				input clk,
				input rst,
				output logic win,
				output logic loss,
				output logic [6:0] s0,s1,s2,s3,
				//output logic [15:0] outmatrix[3:0][3:0],
				output logic vgaclk,
				output logic vga_hsync, vga_vsync,
				output logic sync_b, sync_blank,
				output logic [7:0] red,green,blue
);

logic [3:0]dir;
logic [15:0] inmatrix[3:0][3:0];
logic [15:0] new_score;
logic [15:0] outmatrix[3:0][3:0];


game2048 mde(clk,rst,ar,ab,iz,de,dir);

controller_game game(clk,dir,new_score,inmatrix,new_score,win,loss,outmatrix);

hextosseg conscore(new_score,s0,s1,s2,s3);

vga vga1(clk,vgaclk,rst,outmatrix,red,green,blue,vga_hsync,vga_vsync,sync_blank,sync_b);

assign inmatrix = outmatrix;


endmodule