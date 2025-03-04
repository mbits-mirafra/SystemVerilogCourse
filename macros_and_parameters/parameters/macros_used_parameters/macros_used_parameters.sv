// Define a macro named `DATA` with a value of 5
`define DATA 5  

// Define a parameter `data` using the macro `DATA`
// The preprocessor replaces `DATA` with 5 before compilation
parameter data = `DATA;  

// Testbench module definition
module tb();
  int a, b; // Declare integer variables `a` and `b`

  initial begin
    // Display the value of `data` (which is assigned from the macro `DATA`)
    $display("data=%0d", data); // Output: data=5

    // Display the value of `DATA` directly using macro expansion
    $display("DATA=%0d", `DATA); // Output: DATA=5

    // Perform arithmetic operations using `data` and `DATA`
    a = data + 5;  // a = 5 + 5 = 10
    b = `DATA + 2; // b = 5 + 2 = 7

    // Print the computed values of `a` and `b`
    $display("a=%0d b=%0d", a, b); // Output: a=10 b=7
  end
endmodule

