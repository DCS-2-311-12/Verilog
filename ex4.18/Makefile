
%.json: %.sv
	yosys -p "read_verilog -sv $<; prep; opt; write_json $@"

%.svg: %.json
	netlistsvg $< -o $@

%.png: %.svg
	rsvg-convert -w 1024 $< -o $@


