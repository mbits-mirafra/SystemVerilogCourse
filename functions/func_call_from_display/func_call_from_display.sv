//--------------------------------------------------------------------------------------------
// Here we are calling a function from display statement
// syntax : $display("......%0d.....",function_name(arguements));
//--------------------------------------------------------------------------------------------
module func_call_from_display;
  initial begin
    $display("\n----output for function calling from $display -----");
    //-------------------------------------------------------
    // calling the function with passing 5,6 from display statement 
    //-------------------------------------------------------
    $display("\t@ %0t ns, value of sum is %0d\n",$time,sum(5,6));
  end
  //-------------------------------------------------------
  // Writing the definition of the function.
  //-------------------------------------------------------
  function int sum(input int var1,var2);
    $display("\n\tentered into function");
    return var1+var2;
  endfunction : sum

endmodule : func_call_from_display



