//--------------------------------------------------------------------------------------------
// Here we are calling a function by passing arguments
// via variables and the return is storing in a variable
// and printing the variable
// 
// syntax : function_return_type result = function_name(variable_arguements); 
//--------------------------------------------------------------------------------------------
module func_pass_by_variables;
  
  int result,a,b;
  initial begin
    $display("\t ----output for function passing by values through variables-----");
    //-------------------------------------------------------
    // assigning values to addend and augend
    //-------------------------------------------------------
    a = 5;
    b = 6;
    $display("\tcalling the function");
    //-------------------------------------------------------
    // calling the function with arguements as variables and
    // return value storing in variable result
    //-------------------------------------------------------
    result = sum(a,b);
    $display("\treturned from function and");
    $display("\tstored the value of sum in result");
    $display("\n\t@ %0t ns, value of sum is %0d",$time,result);
  end
  //-------------------------------------------------------
  // Writing the definition of the function.
  //-------------------------------------------------------
  function int sum(input int a,b);
    $display("\n\tentered into function");
    return a + b;
  endfunction : sum

endmodule : func_pass_by_variables
