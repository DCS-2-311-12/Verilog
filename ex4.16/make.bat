@echo off

yosys -p "prep -top mux2_8; write_json %~n1.json" %~n1.sv
netlistsvg %~n1.json -o %~n1.svg
