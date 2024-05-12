module RegisterFile(
	input clk, rst, 
	input [15:0] iaddr,
	input [15:0] data_in,
	input data_wr,
	output reg [23:0] data_out);
reg [23:0] registers [15:0];
assign data_out = registers [iaddr];
always @(posedge clk) begin
	if (rst) begin
		registers <= 16'b0;
		end
	else if (data_wr) begin
		registers[iaddr] <= data_in;
	end
end

	
