
%.json: %.sv
#	yosys -p "read_verilog -sv $<; proc; abc; write_json $@"
	yosys -p "read_verilog -sv $<; synth; muxcover; write_json $@"

%.svg: %.json
	netlistsvg $< -o $@

%.png: %.svg
	rsvg-convert -w 1024 $< -o $@


