//start of module tb
module tb;

//initialize the array of eight element
int array[8] = {1,9,9,7,2,7,0,6};

//Declare the queue of variable size to store the result
int result[$];


initial begin

  $display("\narray[8] = {1,9,9,7,2,7,0,6}");

  $display("\n OUTPUT: ");

  // Use the min() method to find and return the minimum value in the array
  result = array.min();
  $display("\n // min()-Return the minimum value from the array: \n\t%p ", result);

  // / Use the max() method to find and return the maximum value in the array
  result = array.max();
  $display("\n // max()-Return the maximum value from the array: \n\t%p ", result);

  // Use the unique() method to return an array of unique values (duplicates are removed)
  result = array.unique();
  $display("\n // unique()-Return the unique value from the array repeated values can be return once: \n\t%p ", result); 

  // Use the unique_index() method to return the indices of all elements with unique values
  result = array.unique_index();
  $display("\n // unique_index()-Return the indices of all value having unique values: \n\t%p", result);
  $display("");
end
//end of module tb
endmodule: tb

