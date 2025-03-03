//--------------------------------------------------------------------------------------------
// syntax : foreach(array_name[i])
//          begin
//          statements;
//          end
//
// This is mainly used for arrays only for traversing through
// the every element of array without using for loop, simply a
// compact version of following for loop
//
// for(int i=0;i<$size(array);i++);
//--------------------------------------------------------------------------------------------
module foreach_loop();
  // declare array of type int with size of five
  int array[5];

  initial begin : MAIN_BLOCK
    // display before foreach loop starts
    $display("\t----foreach loop output----\n");
    
    // assign value to each element of array using foreach loop
    foreach(array[i]) begin : FOREACH_BLOCK
      array[i]=i;
      $display("\tarray[%0d]=%0d",i,array[i]);
    end : FOREACH_BLOCK

    // display after foreach loop
    $display("\n\t----outside foreach loop----\n"); 
  end : MAIN_BLOCK

endmodule :foreach_loop
