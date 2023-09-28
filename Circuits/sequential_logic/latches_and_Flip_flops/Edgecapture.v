module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);

wire [31:0] bef,af;

always @(posedge clk ) begin
    bef<=af;
    af<=in;
    //need to change to 0
    if(reset)
        out<=0;
    else
    //reset=1:dont change 
    begin
        out <= (af&(~in))|out;
    end  
end






endmodule
