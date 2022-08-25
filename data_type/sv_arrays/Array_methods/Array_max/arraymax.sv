//start of module tb
module tb;

//initialize the array of eight element
int array[8] = {1,9,9,7,2,7,0,6};

//Declare the queue of variable size to store the result
int result[$];


initial
begin

  $display("\narray[8] = {1,9,9,7,2,7,0,6}");

  $display("\n OUTPUT: ");

  result = array.min();
  $display("\n // min()-Return the minimum value from the array: \n\t%p ", result);

  result = array.max();
  $display("\n // max()-Return the maximum value from the array: \n\t%p ", result);

  result = array.unique();
  $display("\n // unique()-Return the unique value from the array repeated values can be return once: \n\t%p ", result); 


  result = array.unique_index();
  $display("\n // unique_index()-Return the indices of all value having unique values: \n\t%p", result);
  $display("");
end
//end of module tb
endmodule: tb

