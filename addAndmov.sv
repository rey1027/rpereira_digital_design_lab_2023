module addAndmov(
	 input logic [1:0] dir,
	 input logic [15:0] inmatrix[0:3][0:3],
	 output logic [15:0] outmatrix[0:3][0:3]
);

//parameter pos_row = 0;
//parameter pos_col = 0;
integer value = 0;
integer n = 0;

 
always_comb begin
	case(dir)
		2'b00: begin // left
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
		2'b01: begin // rigth
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
		2'b10: begin //up
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
		2'b11: begin // down
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
   endcase

end
endmodule