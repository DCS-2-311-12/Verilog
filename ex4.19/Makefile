
%.json: %.sv
	yosys -p "read_verilog -sv $<; prep; opt; write_json $@"

%.svg: %.json
	netlistsvg $< -o $@ --skin extend.svg

%.png: %.svg
	rsvg-convert -w 1024 $< -o $@


