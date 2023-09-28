module top_module (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
); 
wire [3:0] num;
assign num = {a,b,c,d};
reg tmp;
always @(num) begin
    case(num)
    4'd2:tmp = 1'b1;
    4'd7:tmp = 1'b1;
    4'd15:tmp = 1'b1;
    4'd3:tmp =1'b1;
    4'd8:tmp =1'b0;
    4'd11:tmp =1'b1;
    default:tmp = 1'b0;
    endcase
end
assign out_pos = tmp;
assign out_sop = tmp;
endmodule
