//start of dynamic
module dynamic;
int da []; // Declare a dynamic array of integers
initial begin

  da = new[5];  // Allocate memory for 5 elements in the dynamic array
  da ='{1,2,5,6,8}; // Initialize the array with values
  $display(" //\n The dynamic array elements: \n %0p",da);

  $display("");

  $display(" //printring the value of  the each index place");
  foreach(da[i]) // Loop through each index in the dynamic array
    
  //displaying  the value of each index position
  $display("da[%0d] = %0d",i,da[i]);

  $display("");
  //initializing the out of bound memory
  $display("//out of bound ", "display default value of data_type ","\n\tda[1024]=%0d",da[1024]);

  $display(" ");
end
  
endmodule:dynamic
