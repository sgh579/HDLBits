module top_module (input x, input y, output z);
wire a,b,c,d;
ma IA1(
.x(x),
.y(y),
.z(a)
);
ma IA2(
.x(x),
.y(y),
.z(c)
);
mb IB1(
.x(x),
.y(y),
.z(b)
);
mb IB2(
.x(x),
.y(y),
.z(d)
);

assign z = (a|b)^(c&d);

endmodule


module ma (input x, input y, output z);
assign z = (x^y) & x;
endmodule


module mb ( input x, input y, output z );
assign z = ~x^y;
endmodule
