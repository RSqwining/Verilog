module ThreeByOneMultiplexer(
    input A,
    input B,
    input C,
    input sel1,
    input sel2,
    output out
    );
    and(tnode, ~sel1, ~sel2);
    and(bnode, tnode, A);
    and(t1node, ~sel1, sel2);
    and(b1node, t1node, B);
    and(fnode, sel1, C);
    or(out1, b1node, bnode);
    or(out, out1, fnode);
endmodule
