module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
assign {cout,sum} = {1'b0,a}+{1'b0,b}+{{1'b0},{99{1'b0}},cin};

endmodule

