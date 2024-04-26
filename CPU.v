module CPU(
	input [23:0] instr,
	input [15:0] data_in,
	input rst, clk,
	output data_wr,
	output [15:0] iaddr, daddr, data_out);


	
