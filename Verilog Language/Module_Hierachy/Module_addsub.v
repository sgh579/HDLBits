//Adder-subtractor
module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

wire co;
wire [31:0] ux0;
add16 u1(
.cin(sub),
.a(a[15:0]),
.b(ux0[15:0]),
.cout(co),
.sum(sum[15:0])
);

add16 u2(
.cin(co),
.a(a[31:16]),
.b(ux0[31:16]),
.cout(),
.sum(sum[31:16])
);

my_xor ux(
.b(b[31:0]),
.sub(sub),
.res(ux0)
);

endmodule

module my_xor(
input [31:0] b,
input sub,
output [31:0] res

);

wire [31:0] sub32;
assign sub32 = {{32{sub}}};

assign res = b ^ sub32;

endmodule