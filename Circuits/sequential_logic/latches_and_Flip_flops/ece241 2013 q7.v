module top_module (
    input clk,
    input j,
    input k,
    output Q); 
always @(posedge clk ) begin
    if(k^j) Q<= j?1'b1:0;
    else Q<= j?(~Q):Q;
end
endmodule
