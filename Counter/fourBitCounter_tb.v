`timescale 1ns / 1ps
module fourBitCounter_tb();
wire [3:0] out;
reg reset, clock, count;
fourBitCounter i0 (.clock(clock), .reset(reset), .count(count), .out(out));
always begin
    #5; clock=~clock;
end
initial begin
    reset=0;
    clock = 0;
    count = 1;
    #10;
    reset=1;
    #150;
    count=0;
    #50;
reset=0; end
endmodule
