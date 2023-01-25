// While loop - first check the condtion , then enters inside the loop if the condtion is true otherwise 
  // end of the loop.

  module while_simple;
 
     int x = 2; // variable declare 
  initial begin 
   while ( x<5)begin 
   int a;  // declare the variable inside the loop 
   $display ("Iteration = %0d",x); 
   $display ("a is a local variable");
    $display ("The size of a = %0d",$size(a));
    $display ("------------------------------");
// a is a local varaible . We can't use it out of the loop.
  x++;    // incrementing the x
  end
// After the execution of above loop . The value of x = 4 .

while (x<8)begin
  $display ("x is a global varaible ");
  $display ( "The value of x = %0d",x);
  $display ("------------------------");
 x++;
end 
 end 
 endmodule
