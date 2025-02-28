// Class definition for randomization  
class generator;  
  // Declare a 3-bit random variable  
  rand bit [2:0] value;  

  // Constraint: Force value to always be 5  
  constraint cons { value == 5; };  
endclass  

// Module to test conflict between class and inline constraints  
module conflict_with_inline();  

  // Create an instance of the generator class  
  generator gen = new();  
  int check;  

  initial begin  
    // Loop to perform randomization twice  
    for (int i = 1; i <= 2; i++) begin  
      // Apply an inline constraint to force value to 3 (conflicts with class constraint)  
      check = gen.randomize() with { value == 3; };  

      // Check if randomization was successful or failed due to constraint conflict  
      if (check)  
        $display("\tRandomization Done \t @ iteration: %0d -----> value: %0d", i, gen.value);  
      else  
        $display("\tRandomization Failed \t @ iteration: %0d -----> value: %0d", i, gen.value);  
    end  
  end  
endmodule  
