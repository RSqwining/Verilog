module tridflipflop(input clock, input D, output Q, output notQ);
bufif1(out, D, clock);
nand(notQ, out, Q);
nand(Q, ~out, notQ);
endmodule
