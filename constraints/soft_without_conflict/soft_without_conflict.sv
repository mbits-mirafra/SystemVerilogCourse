// Class definition for randomization  
class pack;  
  // Declare a 4-bit random variable  
  rand bit [3:0] a;  

  // Constraint: Ensure 'a' is always greater than 5  
  constraint addr_a { a > 5; }  
endclass  

// Module to test randomization without soft constraints  
module soft_without_conflict;  

  pack pkh;  

  initial begin  
    pkh = new();  
    $display("Without using soft constraint output");  

    // Randomization using the default constraint (a > 5)  
    for (int i = 0; i < 5; i++) begin  
      void'(pkh.randomize());  
      $display("\n \t a = %0d value = %0d", i, pkh.a);  
    end  

    pkh = new();  
    $display("\n \t Output of without conflict");  

    // Randomization with an additional inline constraint (a < 10)  
    for (int i = 0; i < 5; i++) begin  
      void'(pkh.randomize() with { a < 10; });  
      $display("\n \t a = %0d value = %0d", i, pkh.a);  
    end  
  end  
endmodule  

