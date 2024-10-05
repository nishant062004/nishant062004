//to design cmos inverter using verilog
module cmos_inverter(
	input in,
	output out
	);
supply0 gnd;
supply vdd;
//pmos (drain,source,gate)
pmos(out,vdd,in);
//mnmos (drain, source, gate);
nmos(out,gnd,in);
endmodule