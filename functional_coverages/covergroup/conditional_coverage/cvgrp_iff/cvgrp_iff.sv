module cvgrp_iff;
  bit [2:0] a; // 3-bit variable to be covered
  bit [1:0] b; // 2-bit control variable
  bit clk;     // Clock signal

  // Generate a clock signal with a period of 10 time units
  always #5 clk = ~clk;

  // Define a covergroup that samples on the rising edge of clk
  covergroup cvgrp @ (posedge clk);
    // Coverpoint for 'a' that is sampled only when 'b' is equal to 2
    c1: coverpoint a iff (b == 2) {
      bins b1 = {4}; // Define a bin for value 4
      bins b2 = {5}; // Define a bin for value 5
    }
  endgroup

  cvgrp cg = new(); // Instantiate the covergroup

  initial begin
    // Loop 8 times to generate random values and sample coverage
    for (int i = 0; i < 8; i++) begin
      a = $random; // Assign a random value to 'a'
      b = $random; // Assign a random value to 'b'

      @ (posedge clk); // Wait for the rising edge of clk

      // Check if 'b' is 2, then execute the coverpoint sampling
      if (b == 2)
        $write("if 'b' is 2 then coverpoints are executed ; \t");

      // Display the current values and coverage percentage
      $display("a = %d ; b = %d ; coverage %% = %.2f", a, b, cg.get_inst_coverage());
    end
    $finish; // End simulation
  end
endmodule

