module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);
    wire q1, nq1;
    d_latch u1(.D(sw[0]), .E(btnC), .Q(q1), .NotQ(nq1));

    wire [7:0] mem;
    memory_system u2(.data(sw[15:8]), .store(btnC), .addr(sw[7:6]), .memory(mem));

    assign led[0] = q1;
    assign led[1] = nq1;
    assign led[7:2] = 6'b0;
    assign led[15:8] = mem;
endmodule
