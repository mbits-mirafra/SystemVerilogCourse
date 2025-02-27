// Define a class named class_a  
class class_a;  
  // Declare two random 8-bit (byte) variables  
  rand byte a;  
  rand byte x;  

  // Constraint on 'a': It must be between 3 and 5 (inclusive)  
  constraint cons_name1 { a > 2; a < 6; }  

  // Declare an external constraint (defined outside the class)  
  extern constraint cons_name2;  
endclass  

// Define the external constraint outside the class  
constraint class_a::cons_name2 { x > 7; }  

// Define a module to test the class  
module mod;  
  class_a pack; // Declare an object of class_a  

  initial begin  
    pack = new(); // Create an instance of class_a  

    // Loop to randomize and display values 6 times  
    for (int i = 0; i <= 5; i++) begin  
      void'(pack.randomize()); // Randomize both variables based on constraints  
      $display("Iteration = %0d  Value of a = %0d  Value of x = %0d", i, pack.a, pack.x);  
      $display("------------------------------------------------");  
    end  
  end  
endmodule  

