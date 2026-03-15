module tb_fa;

reg a,b,cin;
wire sum,cout;
integer i;

fa dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin
for(i=0;i<8;i=i+1)
begin
{a,b,cin}=i;
#10;
end
#10 $finish;
end
endmodule
