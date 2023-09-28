module top_module (
    input clk,
    input d, 
    input ar,   // asynchronous reset
    output q);
    //通过波形猜测ar高有效，而且ar异步
always @(posedge clk or posedge ar) begin
    
    
    if(ar)q<=0;
    else q<=d;
end


endmodule
