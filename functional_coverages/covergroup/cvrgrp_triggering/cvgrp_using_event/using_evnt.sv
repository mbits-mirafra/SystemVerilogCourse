module using_evnt;
  bit [1:0] a; // 2-bit variable to be covered
  event e; // Event used to trigger the covergroup

  // Define a covergroup that samples when the event 'e' is triggered
  covergroup cgrp @ (e.triggered);
    c1 : coverpoint a; // Coverpoint for 'a'
  endgroup

  cgrp cg; // Declare an instance of the covergroup

  initial begin
    cg = new(); // Instantiate the covergroup

    // Repeat 5 times to generate random values and sample coverage
    repeat (5) begin
      -> e; // Trigger the event
      a = $random; // Generate a random value for 'a'
      
      // Display the current value and coverage percentage
      $display("a = %0d ; coverage = %0.2f", a, cg.get_inst_coverage());
    end
  end
endmodule

