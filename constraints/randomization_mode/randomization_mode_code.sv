class packet;
  rand bit [2:0] data1;  // Declare a 3-bit random variable 'data1'
  randc bit [1:0] data2; // Declare a 2-bit random cyclic variable 'data2'
  int state;             // Integer variable to store the state of randomization

  // Function to enable or disable randomization based on input 'a'
  function rand_mode1(int a);
    if (a == 0) begin
      rand_mode(a); // Disable randomization for all random variables
      state = a;    // Update state to 0 (disabled)
    end
    else if (a == 1) begin
      rand_mode(a); // Enable randomization for all random variables
      state = a;    // Update state to 1 (enabled)
    end
  endfunction
endclass

module randomization_mode;
  packet pkt = new(); // Create an instance of the 'packet' class
  int c;              // Variable to store the return value of randomization

  initial begin
    // Display initial values of 'data1' and 'data2' before randomization
    $display("Before Randomization data1 = %0d data2 = %0d", pkt.data1, pkt.data2);

    // Check if randomization is enabled for 'data1' and 'data2'
    if (pkt.data1.rand_mode())
      if (pkt.data2.rand_mode())
        pkt.state = 1; // Set state to 1 if randomization is enabled for both variables
    $display("randomization of all variables are enabled");

    // Loop to perform randomization and display results
    for (int i = 0; i < 5; i++) begin
      c = pkt.randomize(); // Randomize 'data1' and 'data2'
      $display("[%0d] After enable the randomizations data1 = %0d, data2 = %0d", i, pkt.data1, pkt.data2);
      $display("[%0d] state = %0d", i, pkt.state); // Display the current state

      // Disable randomization at iteration 3
      if (i == 3) begin
        pkt.rand_mode1(0); // Disable randomization
        $display("[%0d] state = %0d", i, pkt.state); // Display the updated state
      end

      // Display values of 'data1' and 'data2' after potential disable
      $display("[%0d] After disable in the randomization data1 = %0d, data2 = %0d", i, pkt.data1, pkt.data2);
    end
  end
endmodule
