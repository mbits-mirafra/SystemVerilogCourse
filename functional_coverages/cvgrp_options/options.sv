// Define a class with random variables
class samp;
  rand bit [2:0] a;  // 3-bit random variable 'a'
  rand bit [3:0] b;  // 4-bit random variable 'b'
endclass

// Declare an instance of the class
samp s;

// Define a covergroup to track coverage of variables
covergroup cgrp;
  c1: coverpoint s.a {
    bins b1 = {1};          // Bin for value 1 of 'a'
    bins b2 = {3};          // Bin for value 3 of 'a'
    option.at_least = 2;    // Requires each bin to be hit at least twice
  }
  
  c2: coverpoint s.a {
    option.weight = 2;      // Increases the probability of selecting 'a' in coverage
  }
  
  c3: coverpoint s.b {
    option.auto_bin_max = 2; // Automatically creates at most 2 bins for 'b'
  }
endgroup

// Declare an instance of the covergroup
cgrp c;

module tb_option_cp;
  initial begin
    s = new;   // Create an instance of class samp
    c = new(); // Create an instance of covergroup
    
    repeat (5) begin
      void'(s.randomize()); // Randomize 'a' and 'b'
      c.sample();           // Sample coverage

      // Display variable values and coverage percentages
      $display("a = %d ; b = %d ; coverage %% = %.2f", s.a, s.b, c.get_inst_coverage());
      $display("coverpoint c1 coverage%% = %.2f%%", c.c1.get_coverage());
      $display("coverpoint c2 coverage%% = %.2f%%", c.c2.get_coverage());
      $display("coverpoint c3 coverage%% = %.2f%%", c.c3.get_coverage());
      $display("-------------------------------------");
    end
  end
endmodule

