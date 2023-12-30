`timescale 1ns / 1ps
module tridflipflop_tb();
reg clock, D;
wire Q, notQ;
tridflipflop i1 (.clock(clock), .D(D), .Q(Q), .notQ(notQ));
always begin
    #15; clock = ~clock;
end
initial begin
    clock=1;
    D=0; #5; D=1; #5; D=0; #5;
    D=0; #5; D=1; #5; D=0; #5;
end
endmodule
