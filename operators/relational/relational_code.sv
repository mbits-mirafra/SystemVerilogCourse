//0 if the relation is false 
//1 if the relation is true 
module relational_code;
logic [2:0]a,b;

initial begin
a = 3'b111;
b = 3'b101;
$display("\n \t Value of a is %0b",a);

$display("\n \t Value of b is %0b",b);
$display("\n \t the output of the a < b is %0d",a<b);

$display("\n \t the output of the a > b is %0d",a>b);

$display("\n \t the output of the a <= b is %0d",a <= b);

$display("\n \t the output of the a >= b is %0d",a >= b);

end
endmodule
