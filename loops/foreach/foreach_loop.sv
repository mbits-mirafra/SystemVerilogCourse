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
// for(int i=0;i<array_name.size();i++);
//--------------------------------------------------------------------------------------------
module foreach_loop();

  int array[5];

  initial 
  begin : main_block
    foreach(array[i])
    begin : foreach_block
      array[i]=i;
      $display("array[%0d]=%0d",i,array[i]);
    end : foreach_block
  end : main_block

endmodule :foreach_loop
