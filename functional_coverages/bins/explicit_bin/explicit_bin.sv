module explicit_bin;

  // Declare a 3-bit variable 'a' for coverage sampling
  bit [2:0] a;

  // Define a covergroup to track specific values of 'a'
  covergroup cov_grp;
    c1 : coverpoint a {
      bins b1 = {2}; // Explicit bin for value 2
      bins b2 = {3}; // Explicit bin for value 3
    }
  endgroup

  // Create an instance of the covergroup
  cov_grp cg = new();

  initial
  begin
    // Loop to generate random values for 'a' and sample coverage
    for (int i = 1; i <= 5; i++)
    begin
      a = $random(); // Assign a random value to 'a'
      cg.sample();   // Sample coverage for 'a'
      
      // Display the current value of 'a' and the coverage percentage
      $display("a = %d, coverage = %.2f %%", a, cg.get_inst_coverage());
    end
  end
endmodule

