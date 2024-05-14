module Divider_tb;

parameter CLOCK_PERIOD = 10;

reg clk = 0;
reg [15:0] dividend = 16'h1234;
reg [15:0] divisor = 16'h00FF;
reg [15:0] quotient;
reg [15:0] remainder;

Divider divider(
    .dividend(dividend),
    .divisor(divisor),
    .quotient(quotient),
    .remainder(remainder)
);

always #CLOCK_PERIOD clk = ~clk;

initial begin
    #100;
    $display("Dividend: %h, Divisor: %h", dividend, divisor);
    #100;
    $display("Quotient: %h, Remainder: %h", quotient, remainder);
    #1000;
    $finish;
end

endmodule
