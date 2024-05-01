module binary_counter_ff(
    input clk,
    input rst,
    output reg [1:0] count
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        count <= 2'b00;
    end else begin
        count <= count + 1;
    end
end

endmodule
