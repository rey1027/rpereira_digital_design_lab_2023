module check_loss(
input logic [15:0] matrix[3:0][3:0],
output logic check_loss
);


always @* begin 
    for (int i = 0; i < 3; i++) begin  //fila
        for (int j = 0; j < 3; j++) begin //Columna 
            if (matrix[i][j] == 0) begin
                check_loss = 0; //Se encontro un campo disponible 
					 break;
            end
				else if(matrix[i][j] == matrix[i+1][j]) begin 
						check_loss=0; 
						break;
				end					 
				else if(matrix[i][j]==matrix[i][j+1]) begin
						check_loss = 0; 
						break;
				end else begin
						check_loss = 1;
				end	
       end
	end
	for (int k = 0; k < 3; k++) begin
				if(matrix[3][k] == matrix[3][k+1]) begin 
						check_loss=0; 
						break;
				end
				if(matrix[k][3] == matrix[k+1][3]) begin 
						check_loss=0; 
						break;
				end
				else check_loss = 1;
		
	end
end 

endmodule
