module bcd_to_7seg(
  input logic [3:0] bcd,
  output logic [6:0] seg
);

  always_comb begin
    case (bcd)
      4'b0000: seg = 7'b111_1110; // 0
      4'b0001: seg = 7'b011_0000; // 1
      4'b0010: seg = 7'b110_1101; // 2
      4'b0011: seg = 7'b111_1001; // 3
      4'b0100: seg = 7'b011_0011; // 4
      4'b0101: seg = 7'b101_1011; // 5
      4'b0110: seg = 7'b101_1111; // 6
      4'b0111: seg = 7'b111_0000; // 7
      4'b1000: seg = 7'b111_1111; // 8
      4'b1001: seg = 7'b111_1011; // 9
      4'b1010: seg = 7'b111_0111; // A
      4'b1011: seg = 7'b001_1111; // B
      4'b1100: seg = 7'b100_1110; // C
      4'b1101: seg = 7'b011_1101; // D
      4'b1110: seg = 7'b100_1111; // E
      4'b1111: seg = 7'b100_0111; // F
      default: seg = 7'b000_0001; // Blank
    endcase
  end

endmodule