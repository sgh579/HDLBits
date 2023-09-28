module top_module( 
    input [254:0] in,
    output [7:0] out );

    wire [7:0] i;
always @(*) begin
    out = 0;
    for(i = 0;i<255;i=i+1)
    begin:n
        if(in[i])out = out+1;
    end
end
endmodule
