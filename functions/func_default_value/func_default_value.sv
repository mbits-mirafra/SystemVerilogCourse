//--------------------------------------------------------------------------------------------
// Here we are calling a function by using values through variables 
// syntax : function_name(); 
//--------------------------------------------------------------------------------------------
module func_default_value;
  int result;
  initial begin
    $display("\n ----output for function passing by values through variables-----");
    $display("\tcalling the function");
    //-------------------------------------------------------
    // calling the function using
    // names of function and return value storing in variable result
    //-------------------------------------------------------
    result=sum();
    $display("\treturned from function and");
    $display("\tstored the value of sum in result");
    $display("\n\t@ %0t ns, value of sum is %0d\n",$time,result);
  end
  //-------------------------------------------------------
  // Writing the definition of the function.
  //-------------------------------------------------------
  function int sum(input int var1=2,var2=3);
    $display("\n\tentered into function");
    return var1+var2;
  endfunction : sum

endmodule : func_default_value
