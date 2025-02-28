// Class definition for randomization  
class generator;  
  // Declare a 3-bit random variable  
  rand bit [2:0] value;  

  // Constraint: Forces 'value' to always be 5  
  constraint cons { value == 5; }  
endclass  

// Module to perform randomization  
module randomization();  

  // Create an instance of the generator class  
  generator gen = new();  

  initial begin  
    $display("\tCalling Randomize....");  

    // First randomization attempt (should always result in value = 5 due to the constraint)  
    if (gen.randomize())  
      $display("\tvalue: %0d \tRandomization successful", gen.value);  
    else  
      $display("\tvalue: %0d \tRandomization Failed", gen.value);  

    $display("\tCalling Randomize....");  

    // Second randomization attempt using an inline constraint (overrides class constraint)  
    // Here, we are forcing value to be 2 instead of 5  
    if (gen.randomize() with { value == 2; })  
      $display("\tvalue: %0d \tRandomization successful", gen.value);  
    else  
      $display("\tvalue: %0d \tRandomization Failed", gen.value);  
  end  

endmodule  

