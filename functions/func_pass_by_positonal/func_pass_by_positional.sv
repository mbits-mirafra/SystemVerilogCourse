//--------------------------------------------------------------------------------------------
// Here we are calling a function by using positional arguements 
// 
// syntax : function_name(.arg_name(value)); 
//--------------------------------------------------------------------------------------------
module func_pass_by_positional;
  
  int result;
  initial
  begin
    $display("\t ----output for function passing by posiitonal arguements-----");
    $display("\tcalling the function");
    //-------------------------------------------------------
    // calling the function with passing 5,6 by using
    // names of function variables and return value storing in variable result
    //-------------------------------------------------------
    result=sum(.var1(5),.var2(6));
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

endmodule : func_pass_by_positional



