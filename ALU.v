module ALU(
	input [15:0] A, B,
	output reg [15:0] out);
always(*) begin
	out= A+B; 
end;
	endmodule;
