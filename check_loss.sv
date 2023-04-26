module check_loss(
input logic [15:0] matrix[0:3][0:3],
output logic check_loss);
	always_comb begin 
	 int j,i; 
    for (i = 1; i <3; i++) begin  //fila
        for (j = 1; j <3; j++) begin //Columna 
            if (matrix[i][j] == 0) begin
                check_loss = 0; //Se encontro un campo disponible 
            end
				if (i>0 &&  matrix[i][j]== matrix[i-1][j]) begin
                    check_loss = 0; 
                end
				if(i!=3 && matrix[i][j]==matrix[i+1][j]) begin 
						check_loss=0; 
				end
				if (j>0 && matrix[i][j] == matrix[i][j-1]) begin
                    check_loss = 0; 
                end
					 
				if(j!=3 && matrix[i][j]==matrix[i][j+1]) begin
						check_loss=0; 
				end
       end
	end
check_loss = 1; 
end 

endmodule
