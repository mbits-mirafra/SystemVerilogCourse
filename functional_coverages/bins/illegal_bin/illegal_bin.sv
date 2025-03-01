module illegal_bin;

  // Declare a 2-bit variable 'a'
  bit [1:0] a;

  // Declare a dynamic array with predefined values
  bit [1:0] values[$] = '{0,1,2,3};

  // Define a covergroup with an illegal bin
  covergroup cov_grp;
    c1 : coverpoint a {
      illegal_bins b1 = {2}; // Mark value 2 as illegal in coverage
    }
  endgroup

  // Create an instance of the covergroup
  cov_grp cg = new();

  initial
  begin
    // Iterate over each value in the array and sample coverage
    foreach(values[i])
    begin
      a = values[i]; // Assign value from the array
      cg.sample();   // Sample coverage

      // Display the current value and coverage percentage
      $display("val = %d, cov = %.2f %%", a, cg.get_inst_coverage());
    end
  end
endmodule

