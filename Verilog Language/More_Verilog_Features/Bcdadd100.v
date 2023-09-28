module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

genvar i,j;

generate

    for(i =0;i<100;i=i+1)
    begin:N
        wire this_in;
        wire this_out;
        bcd_fadd ub(
            .a(a[4*(i+1)-1:4*i]),
            .b(b[4*(i+1)-1:4*i]),
            .cin(this_in),
            .cout(this_out),
            .sum(sum[4*(i+1)-1:4*i])
        );
        
    end
endgenerate

assign N[0].this_in = cin;
assign cout = N[99].this_out;

generate
    for(j=1;j<100;j=j+1)
    begin:N1
        assign N[j].this_in = N[j-1].this_out;
    end
endgenerate
endmodule
