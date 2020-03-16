`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2020 06:58:54 PM
// Design Name: 
// Module Name: vol_bar
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// TO CHANGE TO VOL_DISP LATER
module vol_bar(
    input clk2, sw1, sw2,
    input [3:0] num,
    input [12:0] pixel_index,
    output [15:0] oled_data
    );
    localparam Width = 96;
    localparam Height = 64;
    localparam PixelCount = Width * Height;
    parameter [15:0] GREEN = 16'b00000_111111_00000;
    parameter [15:0] YELLOW = 16'b11111_111111_00000;
    parameter [15:0] RED = 16'b11111_111111_00000;
    parameter [15:0] BLACK = 16'b0;
    parameter [15:0] WHITE = ~BLACK;
    
    wire [6:0] x,y;
    wire [1:0] bor_wid;
    
    convertXY xy0(pixel_index, x, y);

    assign bor_wid = sw1 ? 1 : (sw2 ? 3 : 0);
    
    // TO ADD vol_bar MODULE LATER
    
    border b0(bor_wid, x, y, oled_data); // to change oled_data to a wire to be put into mux later
    // Code below already put into border module
//    always @ (*) begin
//        if (bor_wid) begin
//            if (x <= bor_wid - 1 || x >= Width - bor_wid || y <= bor_wid - 1 || y >= Height - bor_wid) begin
//                oled_data = WHITE;
//            end else begin
//                oled_data = BLACK;
//            end
//        end else begin
//            oled_data = BLACK;
//        end
//    end
    
//    always @ (*) begin
//        case (num)
//        1,2,3,4,5: oled_data = GREEN;
//        6,7,8,9,10: oled_data = YELLOW;
//        11,12,13,14,15: oled_data = RED;
//        endcase
//    end
endmodule