module testbench_22();
logic clk;
logic reset;
logic [31:0] WriteData, DataAdr;
logic MemWrite;
// instantiate device to be tested
top dut(clk, reset, WriteData, DataAdr, MemWrite);
endmodule