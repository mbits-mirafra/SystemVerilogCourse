// Class definition for randomization  
class generator;  
  // Declare a 3-bit random variable  
  rand bit [2:0] value;  
  int check;  

  // Constraint: Ensure value is always greater than 5  
  constraint exp { value > 5; }  

  // Function executed before randomization  
  function void pre_randomize();  
    $display("\tI'm in pre_randomize function");  
    check = 0;  // Reset check before randomization  
  endfunction  

  // Function executed after randomization  
  function void post_randomize();  
    $display("\tI'm in post_randomize function");  
    check = 1;  // Set check after successful randomization  
  endfunction  
endclass  

// Module to test pre_randomize and post_randomize behavior  
module post_randomization();  

  // Create an instance of the generator class  
  generator gen = new();  
  int check;  

  initial begin  
    // First randomization attempt  
    $display("\t[%0t] Calling Randomize....", $time);  
    check = gen.randomize();  
    #1 $display("\t[%0t] @ iteration: 1 -----> value: %0d ", $time, gen.value);  

    // Check if randomization was successful  
    if (check == 1)  
      $display("%c[1;32m\tRandomization is performed%c[0m", 27, 27);  
    else  
      $display("%c[1;31m\tRandomization is not performed%c[0m", 27, 27);  

    // Second randomization attempt using inline constraint  
    $display("\t[%0t] Calling Randomize....", $time);  
    check = gen.randomize() with { value < 5; };  
    #1 $display("\t[%0t] @ iteration: 2 -----> value: %0d ", $time, gen.value);  

    // Check if randomization was successful  
    if (check == 1)  
      $display("%c[1;32m\tRandomization is performed%c[0m", 27, 27);  
    else  
      $display("%c[1;31m\tRandomization is not performed%c[0m", 27, 27);  
  end  
endmodule  

