    module top_module (
        input clk,
        input x,
        output z
    ); 


    wire u1_D,u2_D,u3_D,u1_Q,u2_Q,u2_Q_b,u3_Q,u3_Q_b,u1_Q_b ;

    assign u1_D = u1_Q^x;
    assign u2_D = x&u2_Q_b;
    assign u3_D = x|u3_Q_b;


    initial begin
        // u1_D = 0;
        // u2_D = 0;
        // u3_D = 0;
        u1_Q=0;
        u2_Q=0;
        u3_Q=0;
        u1_Q_b = 1'b1;
        u2_Q_b = 1'b1;
        u3_Q_b = 1'b1;
    end


    d_ff u_dff_1(
        .D(u1_D),
        .Q(u1_Q),
        .clk(clk),
        .Q_b(u1_Q_b)

    );

    d_ff u_dff_2(
        .D(u2_D),
        .Q(u2_Q),
        .Q_b(u2_Q_b),
        .clk(clk)
    );


    d_ff u_dff_3(
        .D(u3_D),
        .Q(u3_Q),
        .Q_b(u3_Q_b),
        .clk(clk)
    );

    assign z =~( u2_Q|u1_Q|u3_Q);




    endmodule

    module d_ff(
        input D,
        output Q,
        output Q_b,
        input clk
    );
    assign Q_b = ~Q;
    always @(posedge clk ) begin
        Q<=D;
    end
    endmodule