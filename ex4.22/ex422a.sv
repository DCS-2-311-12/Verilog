module inv(input  logic [3:0] a,
           output logic [3:0] y);
    always@(a)
        y = ~a;
endmodule
