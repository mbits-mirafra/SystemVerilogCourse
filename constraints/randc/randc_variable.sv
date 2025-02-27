// Define a class named randc_variable
class randc_variable;  
  // Declare a 3-bit random cyclic variable 'a'  
  randc bit [2:0] a; // 'randc' ensures cyclic randomization (no repetition until all values are used)  
endclass  

module randc_var;  

// Create an instance of the class and allocate memory  
randc_variable randc_handle = new();  

initial begin  
  // Display message about cyclic randomization  
  $display("randc - It is cyclic in nature. It will repeat its values after completing one full cycle.");  
  $display("-----------------------------------------------------------------------------");  

  // Loop to randomize the variable 12 times  
  for (int i = 0; i <= 12; i++) begin  
    void'(randc_handle.randomize()); // Randomizes 'a' in a cyclic manner  
    $display("Iteration = %0d, Random Value = %0d", i, randc_handle.a);  
  end  

  $display("-----------------------------------------------------------------------------");  
end  
endmodule  

