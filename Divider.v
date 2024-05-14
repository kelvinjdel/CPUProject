module Divider(
    input [15:0] dividend,
    input [15:0] divisor,
    output reg [15:0] quotient,
    output reg [15:0] remainder
);

reg [15:0] dividend_reg;
reg [15:0] divisor_reg;
reg [15:0] quotient_reg;
reg [15:0] remainder_reg;

always @* begin
    dividend_reg = dividend;
    divisor_reg = divisor;
end

always @* begin
    {quotient_reg, remainder_reg} = dividend_reg / divisor_reg;
end

assign quotient = quotient_reg;
assign remainder = remainder_reg;

endmodule
