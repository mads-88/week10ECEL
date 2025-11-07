module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
    wire [7:0] q0, q1, q2, q3;
    wire s0 = store & (addr==2'b00);
    wire s1 = store & (addr==2'b01);
    wire s2 = store & (addr==2'b10);
    wire s3 = store & (addr==2'b11);

    byte_memory b0(.data(data), .store(s0), .memory(q0));
    byte_memory b1(.data(data), .store(s1), .memory(q1));
    byte_memory b2(.data(data), .store(s2), .memory(q2));
    byte_memory b3(.data(data), .store(s3), .memory(q3));

    reg [7:0] y;
    always @(*) begin
        case (addr)
            2'b00: y = q0;
            2'b01: y = q1;
            2'b10: y = q2;
            2'b11: y = q3;
        endcase
    end
    assign memory = y;
endmodule
