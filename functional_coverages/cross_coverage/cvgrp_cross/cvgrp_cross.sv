class pack;
  rand bit a; // 1-bit random variable 'a'
  rand bit b; // 1-bit random variable 'b'

  // Define a covergroup to track coverage of 'a' and 'b'
  covergroup cg;
    c1: coverpoint a;        // Coverpoint for 'a'
    c2: coverpoint b;        // Coverpoint for 'b'
    c3: cross c1, c2;        // Cross coverage between 'a' and 'b'
  endgroup

  cg = new(); // Instantiate the covergroup
endclass

pack p = new(); // Create an instance of class 'pack'

module cvgrp_cross;
  initial begin
    // Repeat 5 times to generate random values and sample coverage
    repeat (5) begin
      void'(p.randomize()); // Randomize 'a' and 'b'
      p.cg.sample(); // Sample the covergroup with the new values

      // Display the current values and coverage percentage
      $display("a=%d ; b=%d ; coverage %%=%.2f", p.a, p.b, p.cg.get_inst_coverage());
    end

    // Uncomment the line below to display overall coverage percentage
    // $display("%0.2f", p.cg.get_coverage());
  end
endmodule

