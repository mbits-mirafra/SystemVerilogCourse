// Define a class named mult_dimensional_static_array  
class mult_dimensional_static_array;  
  // Declare a 2D random array 'a' with dimensions [3][4] (3 rows, 4 columns), each element is 5-bit  
  rand bit [4:0] a[2:0][3:0];  

  // Constraint: Ensure that the sum of each row is 12  
  constraint b {  
    foreach (a[i])  
      a[i].sum() with (int'(item)) == 12; // Using 'sum()' function with casting  
  }  
endclass  

// Define a module  
module mod;  
  int b; // Declare an integer variable  
  mult_dimensional_static_array pack; // Declare an object of mult_dimensional_static_array  

  initial begin  
    $display("Randomization of multidimensional array");  
    $display("----------------------------------------");  

    pack = new(); // Create an instance of the class  

    // Display the default (uninitialized) values of the array  
    $display("Before randomization");  
    $display("Array = %0p", pack.a);  
    $display("-----------------------------------------------------------");  

    $display("After randomization");  

    // Randomize and display the array 5 times  
    for (int i = 1; i <= 5; i++) begin  
      void'(pack.randomize()); // Randomize the multidimensional array  
      $display("Iteration = %0d, Array = %0p", i, pack.a);  
      $display("-----------------------------------------------------------");  

      // Generate a large random integer (this might cause overflow if the range is too high)  
      b = $random(2147483649);  
      $display("b = %0d", b);  
    end  
  end  
endmodule  

