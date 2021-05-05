module sign_ext2(
    input [11:0]imm,

    output [31:0]ext_imm
);

wire [19:0]ext = imm[11] ? {20{imm[11]}} : {20{20'b0}};
wire ext_imm = {ext, imm};

endmodule
