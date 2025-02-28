// Class definition for randomization  
class generator;  
  // Declare a 3-bit random variable  
  rand bit [2:0] value;  
endclass  

// Module to test inline constraints  
module only_inline();  

  // Create an instance of the generator class  
  generator gen = new();  

  initial begin  
    // Loop to perform randomization twice  
    for (int i = 1; i <= 2; i++) begin  
      // Apply an inline constraint to force value to 3  
      void'(gen.randomize() with { value == 3; });  

      // Display the randomized value  
      #1 $display("\t[%0t] @ iteration: %0d -----> value: %0d", $time, i, gen.value);  
    end  
  end  
endmodule  

