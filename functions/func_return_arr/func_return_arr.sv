//--------------------------------------------------------------------------------------------
// Here we are calling a function through which passing and returning an array
// 
// syntax : function_name(array_name);
//
//          function function_name(array_type array_name);
//--------------------------------------------------------------------------------------------
module func_return_arr;
  
  int array[5];
  initial
  begin
    $display("\t ----output for function returning an array-----");
    $display("\t calling the function");
    //-------------------------------------------------------
    // calling the function passing an array and 
    // return from function is ignored by using void
    //-------------------------------------------------------
    void'(fun_arr(array));
    $display("\treturned from function");
    $display("\n\t@ %0t ns, Array elements = %0p",$time,array);
  end
  //-------------------------------------------------------
  // Writing the definition of the function.
  //-------------------------------------------------------

  function automatic int fun_arr(ref int arr[5]);
    $display("\tEntered the function");
    foreach(arr[i])begin
      arr[i]=i+1;
    end
      $display("\t values assigned to array elements starts from 1");
      //array1=arr;
      return arr[5];
    endfunction

endmodule : func_return_arr
