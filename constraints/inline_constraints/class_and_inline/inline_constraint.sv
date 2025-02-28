// Class definition for randomization  
class generator;  
  // Declare a 3-bit random variable  
  rand bit [2:0] value;  

  // Constraint: Ensure value is always greater than 2  
  constraint exp { value > 2; }  
endclass  

// Module to test inline constraints  
module inline_constraint();  

  // Create an instance of the generator class  
  generator gen = new();  

  initial begin  
    // Perform randomization using the class constraint  
    void'(gen.randomize());  
    #1 $display("\t[%0t] @ iteration: 1 -----> value: %0d", $time, gen.value);  

    // Apply an inline constraint to force value to 7  
    void'(gen.randomize() with { value == 7; });  
    #1 $display("\t[%0t] @ iteration: 2 -----> value: %0d", $time, gen.value);  
  end  
endmodule  

