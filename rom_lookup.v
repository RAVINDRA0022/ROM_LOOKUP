`timescale 1ns / 1ps


module seven_segment_display (
    input [3:0] in,
    output reg [6:0] out
);

reg [6:0] seg_rom [0:15];  

    initial begin
        seg_rom[ 0] = 7'b1111110; // 0
        seg_rom[ 1] = 7'b0110000; // 1
        seg_rom[ 2] = 7'b1101101; // 2
        seg_rom[ 3] = 7'b1111001; // 3
        seg_rom[ 4] = 7'b0110011; // 4
        seg_rom[ 5] = 7'b1011011; // 5
        seg_rom[ 6] = 7'b1011111; // 6
        seg_rom[ 7] = 7'b1110000; // 7
        seg_rom[ 8] = 7'b1111111; // 8
        seg_rom[ 9] = 7'b1111011; // 9
        seg_rom[10] = 7'b1110111; // A 
        seg_rom[11] = 7'b0011111; // b
        seg_rom[12] = 7'b1001110; // C
        seg_rom[13] = 7'b0111101; // d
        seg_rom[14] = 7'b1001111; // E
        seg_rom[15] = 7'b1000111; // F
    end

    always @(*) begin
        out = seg_rom[in];  
    end
endmodule
