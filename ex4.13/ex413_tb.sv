`timescale 1ns/1ns

module tb13();
    logic a, b, c, y;

    example dut(a, b, c, y);

    initial begin
        $dumpfile("ex413.vcd");
        $dumpvars(0, dut);
        a = 0; b = 0; c = 0; #10;
        a = 0; b = 0; c = 1; #10;
        a = 0; b = 1; c = 0; #10;
        a = 0; b = 1; c = 1; #10;
        a = 1; b = 0; c = 0; #10;
        a = 1; b = 0; c = 1; #10;
        a = 1; b = 1; c = 0; #10;
        a = 1; b = 1; c = 1; #10;
    end
endmodule
