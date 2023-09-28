module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);

wire [2:0] al;

assign al = {x3,x2,x1};

always @(*) begin
    if((al == 3'b000) || (al==3'b001)|| (al==3'b100)|| (al==3'b110)) 
    f = 1'b0;
    else
    f = 1'b1;
end

endmodule
