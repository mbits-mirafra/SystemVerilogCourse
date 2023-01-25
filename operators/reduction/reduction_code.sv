
module reduction_code;
logic [0:3]a,y;

initial begin
a=4'b1010;

$display("\n \t the value a is %0b",a);
y=!a;
$display("\n \t the reduction output of NOT is %d ",y);

y=|a;
$display("\n \t the reduction output of OR is %0b ",y);

y=&a;
$display("\n \t the reduction output of AND is %0d ",y);

y=~|a;
$display("\n \t the reduction output of NOR is %0b ",y);

y=~&a;
$display("\n \t the reduction output of NAND is %0b ",y);

y=^a;
$display("\n \t the reduction output of XOR is %0b ",y);

y=~^a;
$display("\n \t the reduction output of XNOR is %0b ",y);
end
endmodule 
