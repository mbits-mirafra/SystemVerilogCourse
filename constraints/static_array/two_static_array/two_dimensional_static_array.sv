// Define a class named two_dimensional_static_array  
class two_dimensional_static_array;  
  // Declare a 2D random array 'a' with dimensions [2][4] (2 rows, 4 columns), each element is 4-bit  
  rand bit [3:0] a[2][4];  
endclass  

// Define a module  
module mod;  
  two_dimensional_static_array pack; // Declare an object of two_dimensional_static_array  

  initial begin  
    pack = new; // Create an instance of the class  

    // Display the default (uninitialized) values of the array before randomization  
    $display("The value of elements of array before randomization = %0p", pack.a);  

    // Randomize and display the array 6 times  
    for (int i = 0; i <= 5; i++) begin  
      void'(pack.randomize()); // Randomize the 2D array  
      $display("The value of elements of array after randomization = %0p", pack.a);  
    end  
  end  
endmodule  

