module fulladder(input  logic a, b, cin,
                 output logic s, cout);

    logic p, g; // 内部変数

    assign p = a ^ b;
    assign g = a & b;

    assign s = p ^ cin;
    assign cout = g | (p & cin);
endmodule
