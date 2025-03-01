module single_val_trans_bin;

  // Declare a 4-bit variable 'a'
  bit [3:0] a;

  // Declare a dynamic array with predefined values
  bit [2:0] values[$] = '{1,2,3,4};

  // Define a covergroup to track specific transition sequences of 'a'
  covergroup cov_grp;
    c1 : coverpoint a {
      bins tran_1 = (1 => 2 => 3); // Track transition from 1 to 2 to 3
      bins tran_2 = (1 => 2 => 4); // Track transition from 1 to 2 to 4
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

