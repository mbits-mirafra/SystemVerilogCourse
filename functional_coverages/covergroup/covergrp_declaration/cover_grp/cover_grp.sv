module cover_grp;
  // Declare two 2-bit variables for coverage
  bit [1:0] a;
  bit [1:0] b;

  // Define a covergroup to track coverage on 'a' and 'b'
  covergroup cgrp;
    c1: coverpoint a; // Coverpoint for 'a'
    c2: coverpoint b; // Coverpoint for 'b'
  endgroup

  // Declare an instance of the covergroup
  cgrp cg;

  initial begin
    cg = new(); // Instantiate the covergroup

    // Repeat the sampling process 5 times
    repeat (5) begin
      a = $random() % 4; // Generate a 2-bit random value for 'a' (0-3)
      b = $random() % 4; // Generate a 2-bit random value for 'b' (0-3)
      
      cg.sample(); // Sample coverage
      
      // Display the values and current instance coverage percentage
      $display("a=%d ; b=%d ; coverage %%= %.2f", a, b, cg.get_inst_coverage());
    end
    
    // Display the overall functional coverage percentage
    $display("Overall functional coverage = %.2f%%", cg.get_coverage());
  end
endmodule

