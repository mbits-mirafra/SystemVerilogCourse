module expression; // Module definition
  bit [1:0] a; // 2-bit variable 'a'
  bit [2:0] b; // 3-bit variable 'b'

  // Define a covergroup to track coverage for 'a', 'b', and their product
  covergroup cg;
    a1: coverpoint a;       // Coverpoint for 'a'
    b1: coverpoint b;       // Coverpoint for 'b'
    axb: coverpoint a * b;  // Coverpoint for the product of 'a' and 'b'
  endgroup: cg

  cg cg_inst; // Declare an instance of the covergroup

  initial begin
    cg_inst = new(); // Instantiate the covergroup

    // Repeat 10 times to generate random values and sample coverage
    repeat (10) begin
      a = $random; // Assign a random value to 'a'
      b = $random; // Assign a random value to 'b'
      cg_inst.sample(); // Sample the covergroup with the new values

      // Display the current values and coverage percentage
      $display("a=%d b=%d axb=%d coverage %%=%0.2f", a, b, a * b, cg_inst.get_inst_coverage());
    end
  end
endmodule: expression

