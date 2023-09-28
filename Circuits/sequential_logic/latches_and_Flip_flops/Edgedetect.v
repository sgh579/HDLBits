module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
reg [7:0] r_in_before;
reg [7:0] r_in_later;
always @(posedge clk ) begin
    r_in_later <= in;
    r_in_before <= r_in_later;
end

assign pedge = ~r_in_before&r_in_later;
endmodule
