module tablero (
  input logic [7:0] matriz [0:4][0:4],
  output logic [7:0] states[24:0]
);


     assign states[0] = matriz[0][0];
     assign states[1] = matriz[0][1];
     assign states[2] = matriz[0][2];
     assign states[3] = matriz[0][3];
     assign states[4] = matriz[0][4];
	  
     assign states[5] = matriz[1][0];
     assign states[6] = matriz[1][1];
     assign states[7] = matriz[1][2];
	  assign states[8] = matriz[1][3];
     assign states[9] = matriz[1][4];
	  
     assign states[10] = matriz[2][0];
     assign states[11] = matriz[2][1];
     assign states[12] = matriz[2][2];
     assign states[13] = matriz[2][3];
     assign states[14] = matriz[2][4];
	  
     assign states[15] = matriz[3][0];
	  assign states[16] = matriz[3][1];
     assign states[17] = matriz[3][2];
     assign states[18] = matriz[3][3];
     assign states[19] = matriz[3][4];
	  
     assign states[20] = matriz[4][0];
     assign states[21] = matriz[4][1];
     assign states[22] = matriz[4][2];
     assign states[23] = matriz[4][3];
	  assign states[24] = matriz[4][4];
     

endmodule