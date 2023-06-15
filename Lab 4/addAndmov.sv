module addAndmov(
	 input logic clk,
	 input logic [3:0] dir, //Direccion a seleccionar 
	 input logic [15:0] score,  
	 input logic [15:0] inmatrix[0:3][0:3], 
	 output logic [15:0] new_score, 
	 output logic [15:0] outmatrix[0:3][0:3]
);

//parameter pos_row = 0;
//parameter pos_col = 0;
integer value = 0;
integer n = 0;



 
always @(posedge clk) begin
	new_score = score;
	case(dir)
		3'b011: begin // left
			for (int i = 0; i < 4; i++) begin
				 value = 0;
				 n = 0;
				 for (int j = 0; j < 4; j++) begin
					outmatrix[i][j] = 0;
					if (value == 0 && inmatrix[i][j] >= 2) begin
					value = inmatrix[i][j];
					//pos_row = i;
					//pos-col = j;
					n = n + 1;
					end else if (value != 0 && inmatrix[i][j] >= 2) begin
						if (value == inmatrix[i][j]) begin
							value = value + inmatrix[i][j];
							new_score = new_score + value;
							outmatrix[i][n-1] = value;
							value = 0;
						end else begin
							outmatrix[i][n-1] = value;
							value = inmatrix[i][j];
							n = n + 1;
						end
					end
				end
				if (value != 0) begin
					outmatrix[i][n-1] = value;
				end
			end
		
		end	// end case left
		3'b100: begin // rigth
				for (int i = 0; i < 4; i++) begin
				 value = 0;
				 n = 4;
				 for (int j = 3; j >= 0; j--) begin
					outmatrix[i][j] = 0;
					if (value == 0 && inmatrix[i][j] >= 2) begin
					value = inmatrix[i][j];
					//pos_row = i;
					//pos-col = j;
					n = n - 1;
					end else if (value != 0 && inmatrix[i][j] >= 2) begin
						if (value == inmatrix[i][j]) begin
							value = value + inmatrix[i][j];
							outmatrix[i][n] = value;
							new_score = new_score + value;
							value = 0;
						end else begin
							outmatrix[i][n] = value;
							value = inmatrix[i][j];
							n = n - 1;
						end
					end
				end
				if (value != 0) begin
					outmatrix[i][n] = value;
				end
			end
		
		end // end case rigth
		3'b001: begin //up
			for (int i = 0; i < 4; i++) begin
				 value = 0;
				 n = 0;
				 for (int j = 0; j < 4; j++) begin
					outmatrix[j][i] = 0;
					if (value == 0 && inmatrix[j][i] >= 2) begin
					value = inmatrix[j][i];
					//pos_row = i;
					//pos-col = j;
					n = n + 1;
					end else if (value != 0 && inmatrix[j][i] >= 2) begin
						if (value == inmatrix[j][i]) begin
							value = value + inmatrix[j][i];
							outmatrix[n-1][i] = value;
							new_score = new_score + value;
							value = 0;
						end else begin
							outmatrix[n-1][i] = value;
							value = inmatrix[j][i];
							n = n + 1;
						end
					end
				end
				if (value != 0) begin
					outmatrix[n-1][i] = value;
				end
			end
		
		end	// end case up
		3'b010: begin // down
				for (int i = 0; i < 4; i++) begin
				 value = 0;
				 n = 4;
				 for (int j = 3; j >= 0; j--) begin
					outmatrix[j][i] = 0;
					if (value == 0 && inmatrix[j][i] >= 2) begin
					value = inmatrix[j][i];
					//pos_row = i;
					//pos-col = j;
					n = n - 1;
					end else if (value != 0 && inmatrix[j][i] >= 2) begin
						if (value == inmatrix[j][i]) begin
							value = value + inmatrix[j][i];
							outmatrix[n][i] = value;
							new_score = new_score + value;
							value = 0;
						end else begin
							outmatrix[n][i] = value;
							value = inmatrix[j][i];
							n = n - 1;
						end
					end
				end
				if (value != 0) begin
					outmatrix[n][i] = value;
				end
			end
		end // end case down
		3'b000: begin // reset
				for (int i = 0;i < 4; i++) begin
					for (int j = 0;j < 4; j++) begin
						if (j == 2 && i == 1) outmatrix[i][j] = 2;
						else outmatrix[i][j] = 0;
						
					end
				end
				new_score = 0;
		end // end reset
   endcase

end
endmodule