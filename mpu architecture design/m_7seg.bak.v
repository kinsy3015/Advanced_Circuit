`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 14:39:57
// Design Name: 
// Module Name: m_7seg
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


module m_7seg(
    //input reg [4:0] SW,
    input clk,
    input [3:0] SW,
    output reg [7:0] LED
    );
    
    //reg [4:0] SW;
    
    initial begin
     //SW <= 0;
     LED <= 0;
    end
    
    always@(SW) begin
        LED <= 8'hfc;
//         LED <= (SW == 0) ? 8'hfc :
//           (SW == 1) ? 8'h60 :
//           (SW == 2) ? 8'hda :
//           (SW == 3) ? 8'hf2 : 
//           (SW == 4) ? 8'h66 :
//           (SW == 5) ? 8'hb6 :
//           (SW == 6) ? 8'hbe : 
//           (SW == 7) ? 8'he0 : 
//           (SW == 8) ? 8'hfe : 
//           (SW == 9) ? 8'hf6 : 0;
        //SW = SW + 1;
        //if( SW > 9 ) begin
        //SW = 0;
        //end
    end

endmodule
