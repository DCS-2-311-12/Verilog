@echo off

yosys -p "read_verilog -sv %~n1.sv; prep -top flop; write_json %~n1.json"
netlistsvg %~n1.json -o %~n1.svg