module range_of_repeat_bin;

  // Declare a 4-bit variable 'a'
  bit [3:0] a;

  // Declare a dynamic array with predefined values
  bit [2:0] values[$] = '{2,3,2,2,2,2,4,4};

  // Define a covergroup to track repeated occurrences of values
  covergroup cov_grp;
    c1 : coverpoint a {
      bins tran_1 = (2 [*3:5]); // Matches 2 appearing between 3 to 5 consecutive times
      bins tran_2 = (4 [*3]);   // Matches exactly 3 consecutive occurrences of 4
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

