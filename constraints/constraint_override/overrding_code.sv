// Define the parent class  
class parent;  
  rand byte a; // Random 8-bit variable 'a'  
  rand byte b; // Random 8-bit variable 'b'  

  // Constraint for parent class:  
  // 'a' must be 0 and 'b' must be 5  
  constraint cons { a == 0; b == 5; }  
endclass : parent  

// Define the child class that extends the parent class  
class child extends parent;  
  // Constraint for child class:  
  // 'a' must be 5 and 'b' must be 8  
  // **Note:** This overrides the parent constraint  
  constraint cons { a == 5; b == 8; }  
endclass : child  

// Define the top-level module  
module top;  
  initial begin  
    child t1;  // Declare an object of the child class  
    t1 = new(); // Create an instance of the child class  

    // Run the randomization 3 times  
    for (int i = 0; i < 3; i++) begin  
      // If randomization fails, display an error message  
      if (!t1.randomize()) begin  
        $display("Randomization failed");  
      end  
      else begin  
        // Display the randomized values of 'a' and 'b'  
        $display("\nIteration: %0d ----> Value of a = %0d, Value of b = %0d", i, t1.a, t1.b);  
      end  
    end  
  end  
endmodule  

