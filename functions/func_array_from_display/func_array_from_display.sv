//--------------------------------------------------------------------------------------------
// Here we are calling a function calling from display
// and returning an array
// 
// syntax : function  
//--------------------------------------------------------------------------------------------

module func_array_from_display;
  //-------------------------------------------------------
  // creating the datatype of array[5] of int type using typedef
  // and also handle for it
  //-------------------------------------------------------
  typedef int array[5];
  array array_hndl;
  initial
  begin
    $display("\t ----output for function returning an array to display-----");
    $display("\t calling the function");
    //-------------------------------------------------------
    // calling the function passing an array and 
    // return from function is ignored by using void
    //-------------------------------------------------------
    $display("\n\t@ %0t ns, Array elements = %0p",$time,fun_arr(array_hndl));
  end
  //-------------------------------------------------------
  // Writing the definition of the function.
  //-------------------------------------------------------

  function array fun_arr(int arr[5]);
    $display("\tEntered into the function");
    foreach(arr[i])begin
      arr[i]=i+1;
    end
      $display("\tvalues assigned to array elements starts from 1");
      array_hndl=arr;
      return array_hndl;
    endfunction

endmodule : func_array_from_display
