// Define a class 'pack' to hold random variables and coverage
class pack;
  rand bit [1:0] a; // 2-bit random variable 'a'
  rand bit [1:0] b; // 2-bit random variable 'b'

  // Define a covergroup to track coverage for 'a' and 'b'
  covergroup cg;
    c1: coverpoint a; // Coverpoint for 'a'
    c2: coverpoint b; // Coverpoint for 'b'
  endgroup

  // Constructor to instantiate the covergroup
  function new();
    cg = new();
  endfunction
endclass

// Create an instance of 'pack' before the module starts execution
pack p = new();

module cvgrp_inside_class;
  initial begin
    // Repeat 5 times to generate random values and sample coverage
    repeat (5) begin
      void'(p.randomize()); // Randomize 'a' and 'b'
      p.cg.sample(); // Sample the covergroup with the new values

      // Display current values and the coverage percentage
      $display("a=%d ; b=%d ; coverage %%=%.2f", p.a, p.b, p.cg.get_inst_coverage());
    end
  end
endmodule

