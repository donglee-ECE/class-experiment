`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2016 12:14:01 PM
// Design Name: 
// Module Name: compare_demo
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


module compare_demo(x,y,xgy,xsy,xey
    );
    input [width-1:0] x,y;
    output xgy,xsy,xey;
    reg xgy,xsy,xey;
    
    parameter width=3;
    
    always@(x or y)
    begin 
        if (x==y)
            xey=1;
        else xey=0;
        
        if (x>y)
            xgy=1;
        else xgy=0;
        
        if (x<y)
            xsy=1;
        else xsy=0;
    end
    
endmodule
