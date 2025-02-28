module cross_var;
  bit a; // 1-bit variable 'a'
  bit b; // 1-bit variable 'b'

  // Define a covergroup to track coverage of 'a' and 'b'
  covergroup cvgrp;
    c1: coverpoint a;  // Coverpoint for 'a'
    c2: coverpoint b;  // Coverpoint for 'b'
    c3: cross a, b;    // Cross coverage between 'a' and 'b'
  endgroup

  cvgrp cg; // Declare covergroup instance

  initial begin
    cg = new(); // Instantiate the covergroup

    // Repeat 5 times to generate random values and sample coverage
    repeat (5) begin
      a = $random; // Assign a random value to 'a'
      b = $random; // Assign a random value to 'b'
      cg.sample(); // Sample the covergroup with the new values

      // Display the current values and coverage percentage
      $display("a=%d ; b=%d ; coverage %%=%.2f", a, b, cg.get_inst_coverage());
    end

    // Uncomment the line below to display overall coverage percentage
    // $display("%0.2f", cg.get_coverage());
  end
endmodule

