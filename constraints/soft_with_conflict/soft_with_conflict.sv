// Class definition for randomization  
class pack;  
  // Declare a 4-bit random variable  
  rand bit [3:0] a;  

  // Constraint: Ensure 'a' is always greater than 5  
  constraint addr_a { a > 5; }  
endclass  

// Module to test soft constraints with conflicts  
module soft_with_conflict;  

  pack pkh;  

  initial begin  
    pkh = new;  
    $display("Output of soft with conflict");  

    // Randomization with an inline constraint that contradicts the class constraint  
    for (int i = 0; i < 5; i++) begin  
      void'(pkh.randomize() with { a < 5; });  
      $display("\n \t a = %0d value = %0d", i, pkh.a);  
    end  

    pkh = new;  
    $display("\n \t Using soft constraint to solve conflict issue");  

    // Randomization with a soft constraint that allows flexibility  
    for (int i = 0; i < 5; i++) begin  
      void'(pkh.randomize() with { soft a < 5; });  
      $display("\n \t a = %0d value = %0d", i, pkh.a);  
    end  
  end  
endmodule  

