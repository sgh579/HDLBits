module top_module (
    input [7:0] in,
    output [31:0] out );//
    assign out = {{24{in[7]}},in};
    // 这一步24{in[7]}必须加个{}，
    // assign out = { replicate-sign-bit , the-input };

endmodule
