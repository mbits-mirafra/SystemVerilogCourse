// Function to calculate the sum of two integers
function bit [3:0] sum(int a, int b); // Declared function 'sum' with 4-bit return type
  int c; // Temporary variable to store the sum
  c = a + b; // Perform addition
  return c; // Returning the sum
endfunction

module func_return_value();

  // Define a class with random cyclic variables
  class val; 
    randc bit [1:0] a; // 2-bit cyclic random variable 'a'
    randc bit [1:0] b; // 2-bit cyclic random variable 'b'
  endclass

  int addition; // Variable to store the sum result

  // Define a covergroup to track coverage
  covergroup cg;
    a: coverpoint v.a; // Coverpoint for variable 'a'
    b: coverpoint v.b; // Coverpoint for variable 'b'
    func: coverpoint sum(v.a, v.b); // Calling function in coverpoint
  endgroup

  val v; // Declare an instance of class 'val'
  cg cg_inst; // Declare an instance of covergroup 'cg'

  initial begin
    v = new(); // Instantiate class 'val'
    cg_inst = new(); // Instantiate covergroup 'cg'

    // Repeat 5 times to generate random values and sample coverage
    repeat (5) begin
      void'(v.randomize()); // Randomizing 'a' and 'b'

      addition = sum(v.a, v.b); // Call function to compute sum
      cg_inst.sample(); // Sample the covergroup

      // Display values and computed sum
      $display("a = %d, b = %d; add = %d", v.a, v.b, addition);
      
      // Display the current coverage percentage
      $display("\tcoverage %%=%0.2f", cg_inst.get_inst_coverage());
    end
  end
endmodule: func_return_value

