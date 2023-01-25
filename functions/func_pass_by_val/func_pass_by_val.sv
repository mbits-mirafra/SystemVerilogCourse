//--------------------------------------------------------------------------------------------
// Here we are calling a function by passing arguments directly and the return
// is storing in a variable and printing the variable
// 
// syntax : function_return_type result = function_name(arguements); 
//--------------------------------------------------------------------------------------------
module func_pass_by_val;
  
  int result;
  initial
  begin
    $display("\t ----output for function passing by values directly-----");
    $display("\t calling the function");
    //-------------------------------------------------------
    // calling the function with passing 5,6 directly and return value storing in variable result
    //-------------------------------------------------------
    result=sum(5,6);
    $display("\treturned from function and");
    $display("\tstored the value of sum in result");
    $display("\n\t@ %0t ns, value of sum is %0d",$time,result);
  end
  //-------------------------------------------------------
  // Writing the definition of the function.
  //-------------------------------------------------------
  function int sum(input int var1,var2);
    $display("\n\tentered into function");
    return var1+var2;
  endfunction : sum

endmodule : func_pass_by_val



