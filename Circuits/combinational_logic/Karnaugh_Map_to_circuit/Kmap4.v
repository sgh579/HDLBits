module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
wire [2:0] count;
assign count = a+b+c+d;
assign out = (count == 3'd1 || count == 3'd3)?1'b1:0;
endmodule
