module random_number(
  input logic [15:0] inmatrix[0:3][0:3], 
  output logic [15:0] outmatrix[0:3][0:3]
);
   int row;
   int col;
	int c;
	logic [15:0] auxmatrix[0:3][0:3];
	

always @* begin
	row = 0;
	col = 0;
	auxmatrix=inmatrix; //Matrix auxiliar 
	c=0;
    while (c<15) begin
      if (inmatrix[row][col] == 16'h0000) begin
        auxmatrix[row][col] = 16'h00002;
		  break;
      end
      col = col + 1;
      if (col == 4) begin
        col = 0;
        row = row + 1;
      end
      if (row == 4) begin
        row = 0;
      end
		c=c+1;
    end
  end
assign outmatrix = auxmatrix;
endmodule