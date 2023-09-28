module top_module ( input clk, input d, output q );

wire w1,w2;
my_dff u1_my_dff(
    .clk(clk),
    .d(d),
    .q(w1)
);

my_dff u2_my_dff(
    .clk(clk),
    .d(w1),
    .q(w2)
);

my_dff u3_my_dff(
    .clk(clk),
    .d(w2),
    .q(q)
);
endmodule
