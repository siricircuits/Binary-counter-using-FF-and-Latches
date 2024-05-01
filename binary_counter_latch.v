module binary_counter_latch(
    input clk,
    input rst,
    output reg [1:0] count
);

reg [1:0] next_count;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        next_count <= 2'b00;
    end else begin
        next_count <= count + 1;
    end
end

always @* begin
    if (rst) begin
        count <= 2'b00;
    end else begin
        count <= next_count;
    end
end

endmodule
