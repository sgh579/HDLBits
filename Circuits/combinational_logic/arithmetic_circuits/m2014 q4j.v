module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

wire [3:0] cout;

Fadd u_fadd_1(
    .a(x[0]),
    .b(y[0]),
    .cin(),
    .sum(sum[0]),
    .cout(cout[0])
);

Fadd u_fadd_2(
    .a(x[1]),
    .b(y[1]),
    .cin(cout[0]),
    .sum(sum[1]),
    .cout(cout[1])
);

Fadd u_fadd_3(
    .a(x[2]),
    .b(y[2]),
    .cin(cout[1]),
    .sum(sum[2]),
    .cout(cout[2])
);

Fadd u_fadd_4(
    .a(x[3]),
    .b(y[3]),
    .cin(cout[2]),
    .sum(sum[3]),
    .cout(sum[4])
);

endmodule

module Fadd( 
    input a, b, cin,
    output cout, sum );
assign sum = a^b^cin;
assign cout = (a&b)|(a&cin)|(b&cin);
endmodule
