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

  int array[5];

  initial 
  begin : MAIN_BLOCK

    $display("\t----foreach loop output----\n");

    foreach(array[i])
    begin : FOREACH_BLOCK
      array[i]=i;
      $display("\tarray[%0d]=%0d",i,array[i]);
    end : FOREACH_BLOCK

    $display("\n\t----outside foreach loop----\n"); 
  end : MAIN_BLOCK

endmodule :foreach_loop
