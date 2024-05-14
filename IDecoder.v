module IDecoder(
	input [23:0] instr);
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

//naming wires for parsing instructions
wire [3:0] opcode;
wire [3:0] DST;
wire [7:0] Ra;
wire [7:0] Rb;
wire [7:0] Abs;
//and assigning them
assign opcode = instr[23:20];
assign DST = instr[19:16];
assign Ra= instr[12:8];
assign Rb= instr[3:0];
//Ra and Rb only need 4 bits
assign Abs= intr[7:0];
assign Mem= instr[19:8];

//for case statements later
always @(posedge clk) begin
	case(opcode)
		ADDRR: control signals <=ADD
		SUBRR: control signals <=SUB
		MULRR: control signals <=MUL
		XOR: control signals <=XOR
		INV: control signals <=INV
		AND: control signals <=AND
		OR: control signals <=OR
		JMP: control signals <=JMP
		NOP: control signals <=NOP
		RES1: control signals <=RES1
		LD: control signals <=LD
		ST: control signals <=ST 
		ADDRA: control signals <=ADDRA
		MULRA: control signals <=MULRA
		RES2: control signals <=RES2
		RES3: control signals <=RES3
	end
end

