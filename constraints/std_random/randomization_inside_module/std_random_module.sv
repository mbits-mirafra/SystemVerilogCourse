module std_random_module;  

// Declare 4-bit bit variables  
bit [3:0] a;  
bit [3:0] b;  
bit [3:0] c;  
bit [3:0] d;  
bit [3:0] e;  

initial begin  
  // Repeat the randomization process 4 times  
  repeat (4) begin  
    // Standard randomization of variable 'a'  
    void'(std::randomize(a));  
    $display("Value of a: %d", a);  

    // Randomize 'b' with a constraint:  
    // - 'b' must be greater than 6  
    // - 'a' must be less than 12  
    void'(std::randomize(b) with { b > 6; a < 12; });  
    $display("Value of b: %d", b);  

    // Randomize both 'c' and 'd' with constraints:  
    // - 'c' must be less than 4  
    // - 'd' must be less than 3  
    void'(std::randomize(c, d) with { c < 4; d < 3; });  
    $display("Value of c: %d and d: %d", c, d);  

    // Randomize 'e' with a constraint:  
    // - 'e' must be within the range of [1, 4]  
    void'(std::randomize(e) with { e inside {[1:4]}; });  
    $display("Value of e: %d", e);  
  end  
end  

endmodule  

