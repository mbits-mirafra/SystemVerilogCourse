module cvgrp_using_clk;
  bit [2:0] a; // 3-bit variable to be covered
  bit b;       // 1-bit variable to be covered
  bit clk;     // Clock signal

  // Generate a clock signal with a period of 10 time units
  always #5 clk = ~clk;

  // Define a covergroup that samples on the rising edge of clk
  covergroup cvgp @ (posedge clk);
    c1: coverpoint a; // Coverpoint for 'a'
    c2: coverpoint b; // Coverpoint for 'b'
  endgroup

  // Instantiate the covergroup
  cvgp cg = new;

  initial begin
    // Repeat 5 times to generate random values and sample coverage
    repeat (5) begin
      @ (posedge clk); // Wait for the rising edge of clk
      a = $random; // Generate a random value for 'a'
      b = $urandom; // Generate a random value for 'b'
      
      // Display the current values and the coverage percentage
      $display("a=%d ; b=%d ; coverage %%= %.2f", a, b, cg.get_inst_coverage());
    end
    
    $finish; // End simulation
  end
endmodule

