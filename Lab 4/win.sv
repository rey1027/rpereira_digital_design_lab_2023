module win(
    input logic [15:0] con,
	 input logic [15:0] inmatrix[0:3][0:3],
	 output logic winflag
);


always @* begin
	for (int i = 0; i < 4; i++) begin
	    for (int j = 0; j < 4; j++) begin
			if (con == inmatrix[i][j]) begin
				winflag = 1;
				break;
			end
		 end
	end
end
endmodule

