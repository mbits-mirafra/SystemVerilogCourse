//--------------------------------------------------------------------------------------------
//foreach is a shorter version of the following for loop:
// for(int i=0;i<$size(array);i++);
//--------------------------------------------------------------------------------------------
module foreach_using_for();
  // declare array of type int with five elements
  int array[5];

  initial begin : MAIN_BLOCK
    // display before for loop start
    $display("\n\t----foreach loop using for loop----\n");
    
    // assign value to each element of array using for loop
    for(int i=0;i<$size(array);i++) begin : FOREACH_USING_FOR
      array[i]=i;
      $display("\tarray[%0d]=%0d",i,array[i]);
    end : FOREACH_USING_FOR
    // display after for loop
    $display("\n\t----outside for loop----\n");
  end : MAIN_BLOCK

endmodule :foreach_using_for
