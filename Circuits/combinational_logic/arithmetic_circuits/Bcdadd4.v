module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );

wire [2:0] mid_cout;

bcd_fadd u_bcd_fadd_1(
    .a(a[3:0]),
    .b(b[3:0]),
    .cin(cin),
    .cout(mid_cout[0]),
    .sum(sum[3:0])
);
bcd_fadd u_bcd_fadd_2(
    .a(a[7:4]),
    .b(b[7:4]),
    .cin(mid_cout[0]),
    .cout(mid_cout[1]),
    .sum(sum[7:4])
);
bcd_fadd u_bcd_fadd_3(
    .a(a[11:8]),
    .b(b[11:8]),
    .cin(mid_cout[1]),
    .cout(mid_cout[2]),
    .sum(sum[11:8])
);
bcd_fadd u_bcd_fadd_4(
    .a(a[15:12]),
    .b(b[15:12]),
    .cin(mid_cout[2]),
    .cout(cout),
    .sum(sum[15:12])
);
endmodule
