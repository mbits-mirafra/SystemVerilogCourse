class packet;
  rand bit [3:0] data;  // Declare a 4-bit random variable 'data'
  constraint data_range { data inside {5, 10, 15}; }  // Constraint: 'data' must be 5, 10, or 15
endclass

module constraint_mode;
  packet pkt = new();  // Create an instance of the 'packet' class

  initial begin
    // Display messages explaining the behavior of constraint mode
    $display("\t If constraint mode is 1, it will display 5, 10, or 15");
    $display("\t If constraint mode is 0, it will display random values");

    // Display the status of the constraint mode before disabling it
    $display("\t Before Constraint disable");
    $display("\t Value of constraint mode = %0d", pkt.data_range.constraint_mode());

    // Randomize 'data' with the constraint enabled
    void'(pkt.randomize());
    $display("\t data = %0d", pkt.data);  // Display the value of 'data'

    // Disable the constraint 'data_range'
    pkt.data_range.constraint_mode(0);

    // Display the status of the constraint mode after disabling it
    $display("\t After Constraint disable");
    $display("\t Value of constraint mode = %0d", pkt.data_range.constraint_mode());

    // Repeat randomization 5 times with the constraint disabled
    repeat (5) begin
      void'(pkt.randomize());  // Randomize 'data' without the constraint
      $display("\t data = %0d", pkt.data);  // Display the value of 'data'
    end
  end
endmodule
