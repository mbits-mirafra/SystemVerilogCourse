//more than one condition is true 


 
module unique_if2;
bit [3:0] a;
initial begin 
  a = 12;
  $display ("The value of a = %0d", a);
  $display ("------------------------");
   unique if (a%2 ==0)begin 
    $display ("Inside the unique if block ");
    $display ("a is an even number.");
  end
  else if (a>0)begin 
    $display ("Inside the first else if block ");
    $display ("a is a positive number");
  end 
  else if (a ==12)begin 
    $display ("Inside the second else if block ");
    $display ("Value of a =12");
  end 
  $display ("Out from the conditional blocks");
  $display ("---------------------------------");

end 
endmodule 
