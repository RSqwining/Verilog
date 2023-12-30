`timescale 1ns / 1ps
module counterDecoder_tb();
wire out;
wire [2:0] pstate;
reg stop, clock;
counterDecoder i1 (.out(out), .pstate(pstate), .stop(stop), .clock(clock));
always begin
  #5; clock=~clock;
 end
initial begin
clock=0;
stop=0; #10;#10;#10;#10;#10;#10;#10;#10;
stop=1; #10;#10;#10;#10;
stop=0;
end
endmodule
