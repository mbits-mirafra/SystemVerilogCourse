module wildcard_bin;

  // Declare a 4-bit variable 'a'
  bit [3:0] a;

  // Declare a dynamic array with predefined values
  bit [3:0] values[$] = '{4'b1000, 4'b1001, 4'b1010, 4'b1011};

  // Define a covergroup to track wildcard-based value matching
  covergroup cov_grp;
    c1 : coverpoint a {
      wildcard bins b1 = {4'b100x}; // Matches any value where the first three bits are '100'
      wildcard bins b2 = {4'b101x}; // Matches any value where the first three bits are '101'
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

