module sign_ext(
    input [11:0]imm,

    output [31:0]ext_imm
);

wire msb = imm[11];
wire [19:0]bit_20 = {20{msb}};
wire [31:0]ext_imm = {bit_20, imm}; 

endmodule
