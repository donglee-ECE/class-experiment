`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2016 12:26:47 PM
// Design Name: 
// Module Name: testbench
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


module testbench();
    wire [2:0] x;
    wire [2:0] y;
    wire xgy,xey,xsy;
    
    reg[5:0] count;
    assign x=count[2:0];
    assign y=count[5:3];
    
    initial begin
        count=6'b0;
    end
    
    always begin
    #10 count = count+6'b1;
    end 
    
    compare_demo compare_sim(
    .x(x),
    .y(y),
    .xgy(xgy),
    .xey(xey),
    .xsy(xsy)
    );
    
endmodule
