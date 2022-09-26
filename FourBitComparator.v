`timescale 1ns / 1ps
module FourBitComparator(a,b,aeqb
    );
input [3:0]a,b;
output aeqb;
assign aeqb = ~(a[3]^b[3])&~(a[2]^b[2])&~(a[1]^b[1])&~(a[0]^b[0]);
endmodule
