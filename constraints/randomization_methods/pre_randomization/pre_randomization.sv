// Class definition for randomization control  
class generator;  
  // Declare a 5-bit random variable  
  rand bit [4:0] value;  

  // Integer variable used to track iterations  
  int i;  

  // Function executed before randomization  
  function void pre_randomize();  
    // If 'i' is even, disable randomization  
    if (i % 2 == 0) begin  
      rand_mode(0); // Turns off randomization for 'value'  
      $display("\tStopping randomization");  
    end  
    else  
      rand_mode(1); // Enables randomization  

    i++; // Increment counter  
  endfunction  
endclass  

// Module to test the pre_randomize behavior  
module pre_randomization();  

  // Create an instance of the generator class  
  generator gen = new();  

  // Declare an integer variable (not used in this code)  
  int check;  

  initial begin  
    // Loop to perform randomization 4 times  
    for (int i = 1; i <= 4; i++) begin  
      $display("\t[%0t] Calling Randomize....", $time);  

      // Perform randomization (pre_randomize() is automatically called before this)  
      void'(gen.randomize());  

      // Display the randomized value (or unchanged value if randomization was disabled)  
      #1 $display("\t[%0t] @ iteration: %0d -----> value: %0d ", $time, i, gen.value);  
    end  
  end  
endmodule  

