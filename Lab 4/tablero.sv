module tablero (
  input logic [15:0] matriz [0:3][0:3],
  output logic [15:0] states[15:0]
);


     assign states[0] = matriz[0][0];
     assign states[1] = matriz[0][1];
     assign states[2] = matriz[0][2];
     assign states[3] = matriz[0][3];
     assign states[4] = matriz[1][0];
     assign states[5] = matriz[1][1];
     assign states[6] = matriz[1][2];
     assign states[7] = matriz[1][3];
     assign states[8] = matriz[2][0];
     assign states[9] = matriz[2][1];
     assign states[10] = matriz[2][2];
     assign states[11] = matriz[2][3];
     assign states[12] = matriz[3][0];
     assign states[13] = matriz[3][1];
     assign states[14] = matriz[3][2];
	  assign states[15] = matriz[3][3];
     

endmodule