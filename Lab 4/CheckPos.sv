module CheckPos( input logic [9:0] hs,vs,
					  output logic [15:0]cuadro);
					  
					  
		assign cuadro[0]  = ((120 < hs)&(200 > hs)&(50  < vs)&(130 > vs))? 1:0;
		assign cuadro[1]  = ((220 < hs)&(300 > hs)&(50  < vs)&(130 > vs))? 1:0;
		assign cuadro[2]  = ((320 < hs)&(400 > hs)&(50  < vs)&(130 > vs))? 1:0;
		assign cuadro[3]  = ((420 < hs)&(500 > hs)&(50  < vs)&(130 > vs))? 1:0;
		assign cuadro[4]  = ((120 < hs)&(200 > hs)&(150 < vs)&(230 > vs))? 1:0;
		assign cuadro[5]  = ((220 < hs)&(300 > hs)&(150 < vs)&(230 > vs))? 1:0;
		assign cuadro[6]  = ((320 < hs)&(400 > hs)&(150 < vs)&(230 > vs))? 1:0;
		assign cuadro[7]  = ((420 < hs)&(500 > hs)&(150 < vs)&(230 > vs))? 1:0;
		assign cuadro[8]  = ((120 < hs)&(200 > hs)&(250 < vs)&(330 > vs))? 1:0;
		assign cuadro[9]  = ((220 < hs)&(300 > hs)&(250 < vs)&(330 > vs))? 1:0;
		assign cuadro[10] = ((320 < hs)&(400 > hs)&(250 < vs)&(330 > vs))? 1:0;
		assign cuadro[11] = ((420 < hs)&(500 > hs)&(250 < vs)&(330 > vs))? 1:0;
		assign cuadro[12] = ((120 < hs)&(200 > hs)&(350 < vs)&(430 > vs))? 1:0;
		assign cuadro[13] = ((220 < hs)&(300 > hs)&(350 < vs)&(430 > vs))? 1:0;
		assign cuadro[14] = ((320 < hs)&(400 > hs)&(350 < vs)&(430 > vs))? 1:0;
		assign cuadro[15] = ((420 < hs)&(500 > hs)&(350 < vs)&(430 > vs))? 1:0;
endmodule
