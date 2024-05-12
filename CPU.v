module CPU(
	input [23:0] instr,
	input [15:0] data_in,
	input rst, clk,
	output data_wr,
	output [3:0] iaddr,
	output [15:0] daddr, data_out);
// initial inputs and outputs 
// followed by section for creating wires
wire [3:0] opcode;
wire [3:0] DST;
wire [7:0] Ra;
wire [7:0] Rb;
wire [7:0] Abs;
wire [15:0] Mem;
// and assigning them	
assign opcode = instr[23:20];
assign DST = instr[19:16];
assign Ra= instr[12:8];
assign Rb= instr[3:0];
//Ra and Rb only need 4 bits
assign Abs= intr[7:0];
assign Mem= instr[19:8]
