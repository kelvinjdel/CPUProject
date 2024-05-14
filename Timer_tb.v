module Timer_tb;

parameter CLOCK_PERIOD = 10;

reg clk = 0;
reg rst = 0;
reg [23:0] initial = 24'd1000000;

Timer timer(
    .clk(clk),
    .rst(rst),
    .initial(initial),
    .count(count)
);

always #CLOCK_PERIOD clk = ~clk;

initial begin
    #100;
    rst = 1;
    #100;
    rst = 0;
    #1000;
    $finish;
end

endmodule
