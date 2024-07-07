`timescale 10ns/10ns

module tb01();
    logic a, b, c, y;

    sillyfunction dut(a, b, c, y);
    
    initial begin
        $dumpfile("ex401.vcd");
        $dumpvars(0,tb01);
        $monitor($stime, a, b, c, y);
        a = 0; b = 0; c = 0;    #10;
        c = 1;                  #10;
        b = 1; c = 0;           #10;
        c = 1;                  #10;
        a = 1; b = 0; c = 0;    #10;
        c = 1;                  #10;
        b = 1; c = 0;           #10;
        c = 1;                  #10;
    end
endmodule