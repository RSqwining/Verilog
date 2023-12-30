`timescale 1ns / 1ps
module fourstateMooreMachine_tb();
wire [2:0] out;
reg in, reset, clock;
fourstateMooreMachine i1 (.out(out), .reset(reset), .in(in),
.clock(clock));
always begin
    #5; clock=~clock;
end
initial begin
    clock = 0;
    in=1; reset=1;
    #10;#10;#10;#10;
    reset=0; #10;
    in=0;#10;#10;#10;#10;
    reset=1;#10;#10;#10;#10;
    in=1;
end
endmodule
