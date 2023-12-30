module multiplex(
    input A,
    input B,
    input sel,
    output out
    );
    and(tnode, A, sel);
    and(bnode, B, ~sel);
    or(out, tnode, bnode);
endmodule
