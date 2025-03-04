// Define a macro named `name` with a value of 10
`define name 10

// Module definition
module tb;
  int a; // Declare integer variable `a`

  initial begin
    // Display the initial value of `a` (default is 0) with timestamp
    $display("[%0t] a = %0d", $time, a); // Output: [0] a = 0

    // Delay of 1-time unit before assigning `a` a new value
    #1 a = `name; // `name` is replaced with 10 during pre-compilation

    // Display the updated value of `a` with timestamp
    $display("[%0t] a = %0d", $time, a); // Output: [1] a = 10
  end
endmodule

