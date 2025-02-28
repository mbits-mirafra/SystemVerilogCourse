class samp;
  randc bit [2:0] a; // 3-bit cyclic random variable
  randc bit b;       // 1-bit cyclic random variable
endclass

samp s; // Declare an instance of the class

// Define a covergroup that tracks coverage for 'a' and 'b'
covergroup cgrp;
  c1: coverpoint s.a; // Coverpoint for 'a'
  c2: coverpoint s.b; // Coverpoint for 'b'
endgroup

cgrp c; // Declare an instance of the covergroup

module cvgrp_start_stop;
  initial begin
    s = new;  // Instantiate the class
    c = new(); // Instantiate the covergroup
    c.start(); // Start coverage collection initially

    // Loop 5 times to generate random values and sample coverage
    for (int i = 0; i < 5; i++) begin
      void'(s.randomize()); // Randomize variables in class
      c.sample(); // Sample the covergroup with the new values

      // Display the current values and coverage percentage
      $display("a=%d ; b=%d ; coverage = %0.2f", s.a, s.b, c.get_inst_coverage());

      // Stop coverage collection if it exceeds 65%
      if (c.get_inst_coverage() > 65) begin
        c.stop(); // Stop covergroup execution
        $display("If coverage%% is greater than 65%%, stop executing covergroup");
      end

      // Restart coverage collection if it drops below 30%
      // if (c.get_inst_coverage() < 30) begin
      //  c.start(); // Start covergroup execution again
      //  $display("If coverage%% is less than 30%%, restart executing covergroup");
      //end
    end
  end
endmodule

