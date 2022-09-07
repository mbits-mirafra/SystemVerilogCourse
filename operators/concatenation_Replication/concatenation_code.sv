
//Concatenation operators are used to join different bits of data into one {}
module concatenation_code;

logic [0:3] a,b,c;
int x;

initial begin
a=1'b1;
b=4'b1110;
c=3'b101;

$display("\n \t the value of a is %0d",a);
$display("\n \t the value of b is %0b",b);
$display("\n \t the value of c is %0b",c);

x = {1'b0,a,b,c};

$display("\n \t the output of Concatenation operators output is %0b",x);
#10;

x= {{2{a}},b,{3{c}}};
$display("\n \t the outpt of Replicates operators output is %0b",x);

end
endmodule 
