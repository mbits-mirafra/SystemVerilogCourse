// Define a class named class_0  
class class_0;  
  // Declare a queue of 6-bit random elements  
  rand bit [5:0] que[$];  

  // Constraint: Ensure the queue size is exactly 5  
  constraint que_const { que.size() == 5; }  
endclass  

// Define a module  
module mod;  
  class_0 pack = new(); // Create an instance of class_0  

  initial begin  
    // Randomize the queue  
    void'(pack.randomize());  

    // Loop through and display each element in the queue  
    for (int i = 0; i < pack.que.size(); i++) begin  
      $display("Iteration = %0d, The value of array = %0d", i, pack.que[i]);  
    end  
  end  
endmodule  

