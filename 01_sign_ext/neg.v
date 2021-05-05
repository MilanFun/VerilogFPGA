module neg(
    input [31:0]x,

    output [31:0]minus_x
);

wire minus_x = ~x + 1;

endmodule
