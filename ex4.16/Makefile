
%.json: %.sv
#	yosys -p "read_verilog -sv $<; prep -top mux2_8; write_json $@"
	yosys -p "prep -top mux2_8; write_json $@" $<

%.svg: %.json
	netlistsvg $< -o $@

%.png: %.svg
	rsvg-convert -w 1024 $< -o $@


# ex416.json: mux2.sv ex416.sv
# 	yosys -p "read_verilog -sv ex416.sv mux2.sv; hierarchy; write_json $@"