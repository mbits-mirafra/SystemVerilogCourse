// While loop - first check the condtion , then enters inside the loop if the condtion is true otherwise 
// end of the loop.

module while_with_var;
  // declaring variable of int type and assigning value to it
  int x = 2;

  initial begin 
    // while loop initialization with required condition
    while (x<5) begin 
      // declaring the variable inside loop
      int a;
      $display ("Iteration = %0d",x); 
      $display ("a is a local variable");
      $display ("The size of a = %0d",$size(a));
      $display ("------------------------------");
      // a is a local varaible . We can't use it out of the loop.
      x++;    // incrementing the x
    end
    // After the execution of above loop . The value of x = 4 .

    while(x<8) begin
      $display ("x is a global varaible ");
      $display ( "The value of x = %0d",x);
      $display ("------------------------");
      x++;
    end 
  end 
endmodule
