//start of module array_order
module array_order;

//initializing the array of eight element
int array[8] = {2,7,1,9,9,7,0,6};

initial begin
  $display("\n array[8]={2,7,1,9,9,7,0,6}");

  $display("\n OUTPUT :");

  // Use the reverse() method to reverse the order of elements in the array
  array.reverse();
  $display("\n // reverse()-Return the reverse order of array element: \n\t%p", array);

  // Use the sort() method to sort the array elements in ascending order
  array.sort();
  $display("\n // sort()-Return the array element in the ascending order: \n\t%p", array);

  // Use the rsort() method to sort the array elements in descending order
  array.rsort();
  $display("\n // rsort()-Return the array element in the descending order: \n\t%p", array);

  // Use a for loop to shuffle the array elements 3 times
  // The shuffle() method ensures that no element remains in its original index position
  for(int i=0;i<3;i++) begin
    array.shuffle();
    $display( "\n // Shuffle()-shuffle the element such that the indicies place element should be different for each shuffle: \n\t%p", array);
  end
  $display("");
end
//end of module array_order
endmodule : array_order

