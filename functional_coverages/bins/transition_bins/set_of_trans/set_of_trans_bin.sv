module single_val_trans_bin;

  // Declare a 4-bit variable 'a'
  bit [3:0] a;

  // Declare a dynamic array with predefined values
  bit [2:0] values[$] = '{1,2,3,4,5};

  // Define a covergroup to track specific transition sequences of 'a'
  covergroup cov_grp;
    c1 : coverpoint a {
      bins tran_1 = (1,2 => 3,4); // Transition from 1 or 2 to 3 or 4
      bins tran_2 = (3,4 => 5);   // Transition from 3 or 4 to 5
      bins tran_3 = (1,3 => 4);   // Transition from 1 or 3 to 4
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

