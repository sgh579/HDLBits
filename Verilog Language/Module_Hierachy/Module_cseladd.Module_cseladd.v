module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

wire sum2cs;
wire [15:0] u2_2_i0;
wire [15:0] u3_2_i1;

add16 u1(
.cin(0),
.a(a[15:0]),
.b(b[15:0]),
.sum(sum[15:0]),
.cout(sum2cs)
);

add16 u2(
.cin(1'b0),
.a(a[31:16]),
.b(b[31:16]),
.sum(u2_2_i0),
.cout()
);

add16 u3(
.cin(1'b1),
.a(a[31:16]),
.b(b[31:16]),
.sum(u3_2_i1),
.cout()
);

multi um(
  .cs(sum2cs),
  .i0(u2_2_i0),
  .i1(u3_2_i1),
  .op(sum[31:16])  
);

endmodule

module multi(
    input [15:0] i0,
    input [15:0] i1,
    output [15:0] op,
    input cs
);
always@(cs,i0,i1)
begin
    if(cs == 1'b0)
        op = i0;
    else    
        op = i1;
    
end
endmodule
