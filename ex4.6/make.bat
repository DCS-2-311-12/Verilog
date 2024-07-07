@echo off

iverilog -g2009 -o %~n1.out %~n1.sv %~n1_tb.sv
vvp %~n1.out
yosys -p "read_verilog -sv %~n1.sv; synth; muxcover; write_json %~n1.json"
netlistsvg %~n1.json -o %~n1.svg
