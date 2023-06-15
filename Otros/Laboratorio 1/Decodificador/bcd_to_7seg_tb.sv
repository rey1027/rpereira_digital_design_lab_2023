module bcd_to_7seg_tb;

  // Definición de los wires y reg
  wire [6:0] seg;
  reg [3:0] bcd;
  reg clk;

  // Instancia del módulo bcd_to_7seg
  bcd_to_7seg dut(
    .bcd(bcd),
    .seg(seg)
  );

  // Generación de un clock de prueba
  always #5 clk = ~clk;

  // Estímulo para las entradas
  initial begin
    bcd = 0;
    clk = 0;
    #10;
    bcd = 1;
    #10;
    bcd = 2;
    #10;
    bcd = 3;
    #10;
    bcd = 4;
    #10;
    bcd = 5;
    #10;
    bcd = 6;
    #10;
    bcd = 7;
    #10;
    bcd = 8;
    #10;
    bcd = 9;
    #10;
    $finish;
  end

  // Comprobación de la salida
  always @(posedge clk) begin
    $display("BCD: %d - Segments: %b", bcd, seg);
  end

endmodule