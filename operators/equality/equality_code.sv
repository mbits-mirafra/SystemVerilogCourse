//equality operators compare operands bit by bit
//if two operands are of unequal filling the zeros

  module equality_code;
  logic [0:3] a, b,c,y;

  initial begin 
    a=4'bx0x1;
    b=4'b1100;
    c=4'bx0x1;
    $display("\n \t the value of the a is %0b",a);
    
    $display("\n \t the value of the b is %0b",b);
    

    $display("\n \t the value of the c is %0b",c);
    y =(a==b);
    
    $display("\n \t The output logical equality operator of a==b is %0b",y);

    y =(a!=b);
    
    $display("\n \t The output logical inequality operator of a!=b is %0b",y);

    y =(a===c);
    
    $display("\n \t The output case equality operator of a===c is %0b",y);

    y =(a!==c);
    $display("\n \t The output case inequality operator of a!==c  is %0b",y);

  end
  endmodule
