//Adder 2
module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
wire middle;

add16 u1_add16(
    .a(a[15:0]),
    .b(b[15:0]),
    .cin(0),
    .cout(middle),
    .sum(sum[15:0])
);

add16 u2_add16(
    .a(a[31:16]),
    .b(b[31:16]),
    .cin(middle),
    .cout(),
    .sum(sum[31:16])
);
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
assign sum = a ^ b ^ cin;
assign cout = (a & b) | (a & cin) | (cin & b);
// Full adder module here
endmodule

//wcnm
//Within each add16, 16 full adders (module add1, not provided) are instantiated to actually perform the addition.
// module add16(
//     input [15:0] a,
//     input [15:0] b,
//     input cin,
//     output cout,
//     output [15:0] sum 
// );
// genvar i;
// genvar j;
// generate
//     begin:sixteen
//         wire this_cin;
//         wire this_cout;
//         for ( i=0;i<16;i=i+1)
//         begin:name
//             add1 u_add1(
//                 .a(a[i]),
//                 .b(b[i]),
//                 .cin(this_cin),
//                 .sum(sum[i]),
//                 .cout(this_cout) 
//             );
//         end
//     end
// endgenerate

// assign sixteen[0].this_cin = 0;
// assign sixteen[15].this_cout = cout;

// generate
//     for(j = 1;j<15;j=j+1)
//     begin:name2
//         assign sixteen[j].this_cin = sixteen[j-1].this_cout;
//     end
// endgenerate

// endmodule