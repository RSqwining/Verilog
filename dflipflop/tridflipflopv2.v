module tridflipflop(input clock, input D, input R, output reg Q, output reg
notQ);
//part2
always @(posedge clock or negedge R)
    begin
    if (R == 1)
    begin
Q=D;
notQ=~D;
    end
    else
    begin
Q=0; notQ=1;
end
End
endmodule
