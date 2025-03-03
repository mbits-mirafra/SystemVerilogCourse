module arithmetic_code;
int a = 10;
int b = 5;
int x,y;
initial begin
  $display("-------------------------");

  // Display the value of 'a'
  $display("\n \t the value of a = %0d",a);
    
  // Display the value of 'b'
  $display("\n \t the value of b = %0d",b);

  $display("\n \t The arithmetic addition of a and b ");

  // Perform arithmetic addition
  y = a + b;
  $display("\n \t the value of y is after doing a + b is %0d",y);

  $display("\n \t The arithmetic subtraction of a and b");
  
  // Perform arithmetic subtraction
  y = a - b;
  
  $display("\n \t the value of y is after doing a-b is %0d",y);

  $display("\n \t The arithmetic multiplication  of a and b");

  // Perform arithmetic multiplication
  y = a * b;
  
  $display("\n \t the value of y is after doing a*b is %0d",y);

  $display("\n \t The arithmetic division  of a and b");

  // Perform arithmetic division
  y = a / b;
  
  $display("\n \t the value of y is after doing a/b is %0d",y);
  
  $display("\n \t The arithmetic modulus of a and b");

  y =a%b;
  
  $display("\n \t the value y is after doing a modulus b is %0d",y);
  
  $display("\n \t The arithmetic Exponential operator  of a and b");
 
  y = a ** b;
  
  $display("\n \t the value of y is after doing a ** b is %0d",y);
  
  $display("-------------------------");
  end
endmodule

