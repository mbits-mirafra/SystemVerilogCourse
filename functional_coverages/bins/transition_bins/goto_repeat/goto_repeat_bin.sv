module goto_repeat_bin;

  // Declare a 4-bit variable 'a'
  bit [3:0] a;

  // Declare a dynamic array with predefined values
  bit [2:0] values[$] = '{1,2,3,4,3,4,2,3,4,5};

  // Define a covergroup to track specific transition sequences
  covergroup cov_grp;
    c1 : coverpoint a {
      bins tran_1 = (1 => 4 [->3] => 5); // Matches transition from 1 to 4 occurring exactly 3 times before reaching 5
      // bins tran_2 = (1 => 3 [=3] => 4); // Alternative commented transition bin
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

