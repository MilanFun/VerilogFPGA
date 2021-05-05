module kon(
    input wire in_1, 
    input wire in_2,
    output wire out 
);

assign out = (in_1 & in_2);

endmodule

`timescale 1 ns /100 ps

module testbench();
reg in_1 = 1'b0;
reg in_2 = 1'b0;

always begin
    #1 in_1 = ~in_1;
end

always begin
    #2 in_2 = ~in_2;
end

wire out;

kon kon(.in_1(in_1), .in_2(in_2), .out(out));

initial begin
    $dumpvars;      /* Open for dump of signals */
    $display("Test started...");   /* Write to console */
    #100 $finish;    /* Stop simulation after 10ns */
end

endmodule