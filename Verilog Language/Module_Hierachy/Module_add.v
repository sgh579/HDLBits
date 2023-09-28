module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

wire u1_cout;
wire [15:0] u1_out;
wire [15:0] u2_out;

add16 u1_add16(
    .cin(0),
    .a(a[15:0]),
    .b(b[15:0]),
    .cout(u1_cout),
    .sum(u1_out)
);

add16 u2_add16(
    .cin(u1_cout),
    .a(a[31:16]),
    .b(b[31:16]),
    .cout(),
    .sum(u2_out)
);

assign sum = {{u2_out},{u1_out}};
endmodule
