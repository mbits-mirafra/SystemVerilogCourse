//Shift operators are used to shift data in a variable
module shift_code;

logic [3:0] a, b,c,y;

initial begin
a=4'b1011;
b=4'b1100;

$display("\n \t the value of a is %0b",a);

$display("\n \t the value of b is %0b",b);

$display("\n \t the a of logical left shift operator output is %0b",a<< 1);

$display("\n \t the b logical left shift operator output is %0b",b>>2);

$display("\n \t the a logical left shift operator output is %0b",a<<<2);

$display("\n \t the b logical left shift operator output is %0b",b>>>1);

end
endmodule 
