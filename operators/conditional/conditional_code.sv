//condition?true_expression:false_expression
module conditional_code;

int c,d;
string y;
string a,b;
initial begin

a = "true";
b = "false";
c=4'b0011;
d=4'b1001;

$display("\n \t the value of c is %0b",c);

$display("\n \t the value of d is %0b",d);

y=c>d?a:b;
$display("\n \t the conditional output is %0b",y);
end
endmodule 
