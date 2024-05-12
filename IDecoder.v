module IDecoder(
	input [3:0] instr,
	output reg [n-1:0] control_signals); //number of control signals
parameter [3:0] ADDRR = 4'b0000;
parameter [3:0] SUBRR = 4'b0001;
parameter [3:0] MULRR = 4'b0010;
parameter [3:0] XOR = 4'b0011;
parameter [3:0] INV = 4'b0100;
parameter [3:0] AND = 4'b0101;
parameter [3:0] OR = 4'b0110;
parameter [3:0] JMP = 4'b0111;
parameter [3:0] NOP = 4'b1000;
parameter [3:0] RES1 = 4'b1001;
parameter [3:0] LD = 4'b1010;
parameter [3:0] ST = 4'b1011;
parameter [3:0] ADDRA = 4'B1100;
parameter [3:0] MULRA = 4'b1101;
parameter [3:0] RES2 = 4'b1110;
parameter [3:0] RES3 = 4'b1111;
//simplifying for readability
//for case statements later
always @posedge clk) begin
	case(instr)
		ADD: control signals <=ADD
