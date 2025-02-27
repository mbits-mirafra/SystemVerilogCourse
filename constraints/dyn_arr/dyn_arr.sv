// Define a class named class_1  
class class_1;  
  // Declare a dynamic array of 8-bit elements with cyclic randomization  
  randc bit [7:0] dyn_arr[];  

  // Constraint: Ensure the dynamic array size is between 4 and 6  
  constraint dyn_arr_size {  
    dyn_arr.size() > 3;  
    dyn_arr.size() < 7;  
  }  

  // Constraint: Each element of the array must be the square of its index  
  constraint dyn_arr_ele {  
    foreach (dyn_arr[i])  
      dyn_arr[i] == i * i;  
  }  
endclass  

// Define a module  
module mod;  
  class_1 pack; // Declare an object of class_1  

  initial begin  
    pack = new(); // Create an instance of class_1  

    // Randomize and display the dynamic array 3 times  
    for (int i = 0; i <= 2; i++) begin  
      void'(pack.randomize()); // Randomize the array  
      $display("Iteration = %0p, Array = %0p", i, pack.dyn_arr);  
    end  
  end  
endmodule  

