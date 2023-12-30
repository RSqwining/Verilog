`timescale 1ns / 1ps
module tridflipflop_tb();
reg clock, D, R;
wire Q, notQ;
tridflipflop i1 (.clock(clock), .D(D), .R(R), .Q(Q), .notQ(notQ));
always begin
    #45; clock = ~clock;
end
initial begin
    clock=1;
    R=0;
    D=0; #15; D=1; #15; D=0; #15;
    D=0; #15; D=1; #15; D=0; #15;
    R=1;
    D=0; #15; D=1; #15; D=0; #15;
    D=0; #15; D=1; #45; D=0; #15;
end
endmodule
