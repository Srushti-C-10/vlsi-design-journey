module dec2_4(a,b,y0,y1,y2,y3);
input a;
input b;
output reg y0;
output reg y1;
output reg y2;
output reg y3;

always@(*)
begin
case({a,b})
2'b00:begin y0=1;y1=0;y2=0;y3=0; end
2'b01:begin y0=0;y1=1;y2=0;y3=0; end
2'b10:begin y0=0;y1=0;y2=1;y3=0; end
2'b11:begin y0=0;y1=0;y2=0;y3=1; end
endcase
end
endmodule


