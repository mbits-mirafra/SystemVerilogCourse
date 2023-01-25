
module bitwise_code;
 logic[0:3]a,b,x,y,c;
 initial begin
 a=4'b1101;
 b=3'b101;
 c=4'bx010;
  $display("\n \t the value of a is %0b",a);

  $display("\n \t the value of b is %0b",b);
  y=~a;

  $display("\n \t the bitwise NOT (~a) operator output is %0b",y);

  y=a&b;
  $display("\n \t the bitwise AND (a&b) operator output is %0b",y);

  y=a|c;
  $display("\n \t the bitwise OR (a|c) operator output is %0b",y);

  y=a^b;
  $display("\n \t the bitwise XOR (a^b) operator output is %0b",y);

  y= ~(a & b);
  $display("\n \t the bitwise NAND ~(a&b) operator output is %0b", y);

  y=  ~(b|a);
  $display("\n \t the bitwise NOR ~(b|a) operator output is %0b", y);

  y= ~(a^b);
  $display("\n \t the bitwise XNOR ~(a^b) operator output is %0b", y);

end
endmodule 
