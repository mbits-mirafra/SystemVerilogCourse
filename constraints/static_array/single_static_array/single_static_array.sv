// Define a class named single_static_array  
class single_static_array;  
  // Declare a static array of size 7 with cyclic randomization  
  randc byte a[7];  
endclass  

// Define a module  
module stat_array;  
  single_static_array stat_arr; // Declare an instance of the class  

  initial begin  
    stat_arr = new(); // Create an instance of the class  

    // Display message about static array properties  
    $display("Static array - Size is already declared. So, we can only randomize");  
    $display("               the elements of it.");  
    $display("-------------------------------------------------------------------");  

    // Display information about the data type  
    $display("rand byte a[7];  // Data type is byte");  
    $display("-------------------------------------------------------------------");  

    // Display default values of the array before randomization  
    $display("Before randomizing the elements of array 'a'");  
    $display("Assign by default value of array data type.");  
    $display("%0p", stat_arr.a);  
    $display("-------------------------------------------------------------------");  

    // Perform randomization  
    void'(stat_arr.randomize());  

    // Display the array after randomization  
    $display("After randomizing the elements of array 'a'");  
    $display("Output = %0p", stat_arr.a);  
    $display("-------------------------------------------------------------------");  
  end  
endmodule  

