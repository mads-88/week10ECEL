module byte_memory(
    input [7:0] data,
    input store,
    output reg [7:0] q
);
    always @(store, data) begin
        if (store) q <= data;
    end
endmodule
