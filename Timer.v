module Timer(
    input clk,
    input rst,
    input [23:0] initial,
    output reg [23:0] count
);

reg [23:0] counter;

always @ (posedge clk or posedge rst) begin
    if (rst) begin
        counter <= initial;
    end else begin
        counter <= counter - 1;
    end
end

assign count = counter;

endmodule
