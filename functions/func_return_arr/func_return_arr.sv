//--------------------------------------------------------------------------------------------
// Here we are calling a function through which passing and returning an array
// 
// syntax : function_name(array_name);
//          function function_name(array_type array_name);
//--------------------------------------------------------------------------------------------
module func_return_arr;
  //declare array with size 5  
  int array[5];
  initial begin
    $display("\t----output for function returning an array-----");
    $display("\tcalling the function");
    //-------------------------------------------------------
    // calling the function passing an array and 
    // return from function is ignored by using void
    //-------------------------------------------------------
    void'(fun_arr(array));
    $display("\treturned from function");
    $display("\n\t@ %0t ns, Array elements = %0p",$time,array);
  end
  //----------------------------------------------------------
  // Writing the definition of the function using ref keyword.
  //----------------------------------------------------------
  function automatic int fun_arr(ref int arr[5]);
    $display("\tEntered the function");
    //using foreach assigning value using i+1 in each location
    foreach(arr[i])begin
      arr[i]=i+1;
    end
    $display("\tvalues assigned to array elements starts from 1");
  endfunction

endmodule : func_return_arr
