// The 'inside' keyword is used to constrain a variable to a specific set of values or a range  
// Syntax: constraint constraint_name { variable inside {[min:max]}; }  

// Class declaration  
class PQR;  

  // Declare a 4-bit random variable  
  rand bit [3:0] var1;  

  // Constraint: Restrict var1 to be within the range [3:9]  
  constraint C1 { (var1 inside {[3:9]}); }  

endclass  

// Define the module  
module top;  

  initial begin  
    int i; // Declare an integer variable for iteration  

    // Declare a handle for the PQR class  
    PQR pqr;  

    // Allocate memory for the handle  
    pqr = new();  

    $display("------- Output for inside constraint -------");  
    $display("-------------------------------------------");  

    // Run randomization and display results for 6 iterations  
    for (int i = 1; i < 7; i++) begin  
      void'(pqr.randomize()); // Randomize the variable  
      $display("[%0t] @ iteration: %0d -----> var1 = %0d", $time, i, pqr.var1);  
    end  

    $display("-------------------------------------------");  
  end  

endmodule  

