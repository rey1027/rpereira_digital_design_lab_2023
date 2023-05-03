module game2048(
  input clk,
  input reset,
  input move_up,
  input move_down,
  input move_left,
  input move_right,
  output clk_out,
  output reset_out,
  output logic [3:0] state_reg
);

 //FSM
 
  // Define states
  parameter START = 0; //00
  parameter MOVE_UP = 1; //01
  parameter MOVE_DOWN = 2; //10
  parameter MOVE_LEFT = 3; //11
  parameter MOVE_RIGHT = 4; //100
  
  // Define outputs
 // logic [15:0] board_reg [0:3][0:3];
  //assign board = board_reg;
 // reg [15:0] score2;
 // assign score=score2;
 // reg win_2;
 // assign win=win_2;
 // reg lose_2;
  //assign lose=lose_2;
 // reg [1:0] direcciones;
 
 
  // Lleva el control de los estados 
  
  //Módulos del juego

  
  // Define state machine
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      state_reg <= START;
     // board_reg ='{default:0};
		
    end else begin
      case (state_reg)
        START: begin
          if (move_up) state_reg <= MOVE_UP;
          else if (move_down) state_reg <= MOVE_DOWN;
          else if (move_left) state_reg <= MOVE_LEFT;
          else if (move_right) state_reg <= MOVE_RIGHT;
        end
        MOVE_UP: begin
			 if (move_down) state_reg <= MOVE_DOWN;
          else if (move_left) state_reg <= MOVE_LEFT;
          else if (move_right) state_reg <= MOVE_RIGHT;
			 else state_reg<=MOVE_UP;
        end
        MOVE_DOWN: begin
			 if (move_down) state_reg <= MOVE_DOWN;
          else if (move_left) state_reg <= MOVE_LEFT;
          else if (move_right) state_reg <= MOVE_RIGHT;
			 else state_reg<=MOVE_UP; 
        end
        MOVE_LEFT: begin
			 if (move_down) state_reg <= MOVE_DOWN;
          else if (move_left) state_reg <= MOVE_LEFT;
          else if (move_right) state_reg <= MOVE_RIGHT;
			 else state_reg<=MOVE_UP; 
        end
        MOVE_RIGHT: begin
			 if (move_down) state_reg <= MOVE_DOWN;
          else if (move_left) state_reg <= MOVE_LEFT;
          else if (move_right) state_reg <= MOVE_RIGHT;
			 else state_reg<=MOVE_UP;
			 
        end
      endcase
    end
  end
  
endmodule
