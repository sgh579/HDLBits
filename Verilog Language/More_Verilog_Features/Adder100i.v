module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
genvar i,j;
//被sb ij不分气晕


generate
    for(i=0;i<100;i=i+1)
    begin:N
    wire this_in;
    wire this_out;
    add1 ua1(
        .a(a[i]),
        .b(b[i]),
        .cin(this_in),
        .cout(this_out),
        .o(sum[i])
    );
    assign cout[i] = this_out;
    end      
endgenerate

assign N[0].this_in = cin;

generate
for(j=1;j<100;j=j+1)
begin:nf
    assign N[j].this_in = N[j-1].this_out;
end
endgenerate


endmodule
module add1(
input a,
input b,
input cin,
output o,
output cout
);
assign o = a^b^cin;
assign cout = ((a&b)|(a&cin)|(b&cin))?1'b1:1'b0;
endmodule