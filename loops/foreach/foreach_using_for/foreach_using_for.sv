//--------------------------------------------------------------------------------------------
//foreach is a shorter version of the following for loop:
// for(int i=0;i<$size(array);i++);
//--------------------------------------------------------------------------------------------
module foreach_using_for();

  int array[5];

  initial 
  begin : MAIN_BLOCK

    $display("\n\t----foreach loop using for loop----\n");
    
    for(int i=0;i<$size(array);i++)
    begin : FOREACH_USING_FOR
      array[i]=i;
      $display("\tarray[%0d]=%0d",i,array[i]);
    end : FOREACH_USING_FOR
    $display("\n\t----outside for loop----\n");
  end : MAIN_BLOCK

endmodule :foreach_using_for
