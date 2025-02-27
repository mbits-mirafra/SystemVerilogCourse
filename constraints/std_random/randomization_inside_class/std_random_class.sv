// Define a class named std_random_class  
class std_random_class;  

  // Declare an integer variable 'a'  
  int a;  
  // Declare a 3-bit random variable 'b'  
  rand bit [2:0] b;  
  // Constraint on 'a': It should be between 2 and 9 (inclusive)  
  constraint c1 { a >= 2; a <= 9; }  

  // Function to randomize and display values  
  function void display();  
    int c; // Local integer variable for randomization  
    // Randomize all class variables using std::randomize(this)  
    void'(std::randomize(this));  
    $display("Using std::randomize: a = %0d, b = %d", a, b);  

    // Randomize only 'a' using randomize()  
    if (randomize(a))  
      $display("Using randomize(a): %0d", a);  

    // Randomize 'a' using std::randomize(a)  
    if (std::randomize(a))  
      $display("Using std::randomize(a): %0d", a);  

    // Randomize 'b' using std::randomize(b)  
    if (std::randomize(b))  
      $display("Using std::randomize(b): %0d", b);  

    // Randomize 'c' with an inline constraint (c must be between 2 and 3)  
    if (std::randomize(c) with { c > 1; c < 4; })  
      $display("Using std::randomize with constraint, c: %0d", c);  

    // Randomize all class variables using class's randomize() method  
    void'(this.randomize());  
    $display("Using this.randomize(): a = %0d, b = %d, c = %d", a, b, c);  

  endfunction  
endclass  

// Testbench module  
module tb;  
  std_random_class t; // Declare an object of std_random_class  

  initial begin  
    t = new(); // Create a new instance of the class  

    // Repeat the randomization and display process 3 times  
    repeat (3)  
      t.display();  
  end  
endmodule  

