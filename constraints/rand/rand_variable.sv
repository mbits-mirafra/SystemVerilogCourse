// Define a class named rand_variable
class rand_variable;
  // Declare a 3-bit random variable 'a'
  rand logic [2:0] a; // 'rand' keyword allows SystemVerilog to randomize this variable
endclass

// Declare an instance of the class
rand_variable raf;

module rand_var;
initial begin
  // Create a new object of the class
  raf = new();

  // Display message about randomization
  $display ("rand - Randomizing the value of the variable in non-cycling form");

  // Loop to randomize the variable 10 times
  for (int i = 0; i <= 10; i++) begin
    void'(raf.randomize()); // Randomizes the variable 'a' inside the object
    $display("Iteration = %0d, Random value of a = %0d", i, raf.a);
  end

  $display ("-----------------------------------------------------------------");
end
endmodule

