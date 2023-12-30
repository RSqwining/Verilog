```verilog
module ThreeByOneMultiplexer_tb;
    reg A, B, C, sel1, sel2;
    wire D;
    ThreeByOneMultiplexer il (.A (A), .B (B), .C (C), .sel1 (sel1), .sel2
(sel2), .out (D));
    initial
begin
            // sel1 = 0, sel2 = 0
            sel1 = 0;
            sel2 = 0;
            C = 0;
            A = 0;
            B = 0;
            #20;
            B = 1;
            #20;
            A = 1;
            #20;
            B = 0;
            #20;
            C = 1;
            A = 0;
            B = 0;
            #20;
            B = 1;
            #20;
            A = 1;
            #20;
            B = 0;
            #20;
            // sel1 = 0, sel2 = 1
            sel2 = 1;
            A = 0;
            B = 0;
            C = 0;
            #20;
            B = 1;
            #20;
            A = 1;
            #20;
            B = 0;
            #20;
            C = 1;
            A = 0;
            B = 0;
            #20;
            B = 1;
            #20;
            A = 1;
            #20;
            B = 0;
            #20;
            // sel1 = 1, sel2 = 1
            sel1 = 1;
            A = 0;
            B = 0;
            C = 0;
            #20;
            B = 1;
            #20;
            A = 1;
            #20;
            B = 0;
            #20;
            C = 1;
            A = 0;
            B = 0;
            #20;
            B = 1;
            #20;
            A = 1;
            #20;
            B = 0;
            #20;
            // sel1 = 1, sel2 = 0
            sel2 = 0;
            A = 0;
            B = 0;
            C = 0;
            #20;
            B = 1;
            #20;
            A = 1;
            #20;
            B = 0;
            #20;
            C = 1;
            A = 0;
            B = 0;
            #20;
            B = 1;
            #20;
            A = 1;
            #20;
            B = 0;
            #20;
end
endmodule
```
