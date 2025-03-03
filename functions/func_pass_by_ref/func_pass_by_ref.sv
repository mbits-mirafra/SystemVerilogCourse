//--------------------------------------------------------------------------------------------
// Here we are calling a function by passing the reference i.e.,
// by sending the address so that the changes made to variables in 
// function are not only to local but effect globally.
// 
// syntax : function_return_type result = function_name(arguements);
//          function automatic func_name(ref arguments);
// for giving the reference we need to add the keywords as ref and also automatic 
//--------------------------------------------------------------------------------------------
module func_pass_by_ref;
  //declared variables using integer
  int result,addend,augend;
  initial begin
    $display("\t ----output for function passing by reference -----");
    //-------------------------------------------------------
    // assigning values to addend and augend
    //-------------------------------------------------------
    addend=5;
    augend=6;
    $display("\tBefore calling function -> addend = %0d , augend = %0d",addend,augend);
    $display("\tcalling the functions");
    //-------------------------------------------------------
    // calling the function with passing 5,6 directly and return value storing in variable result
    //-------------------------------------------------------
    result=sum_without_ref(addend,augend);
    //$display("\treturned from function without ref");
    //$display("\tstored the value of sum in result");
    //$display("\n\t@ %0t ns, value of sum is %0d",$time,result);
    $display("\tafter calling function without ref -> addend = %0d, augend =%0d",addend,augend);

    //calling function with ref means declare ref keyword while defining function
    result=sum_with_ref(addend,augend);
    $display("\tafter calling function with ref -> addend = %0d, augend =%0d",addend,augend);
  end
  //--------------------------------------------------------------------
  // Writing the definition of the function with ref keyword in argument.
  //--------------------------------------------------------------------
  function automatic int sum_with_ref(ref int var1,var2);
    int temp;
    $display("\n\tentered into with ref function");
    temp=var1;
    var1=var2;
    var2=temp;
    $display("\tswapped variables by using ref ");
    //returning sum of var1+var2
    return var1+var2;
  endfunction : sum_with_ref

  //--------------------------------------------
  // Writing the definition of the function.
  //--------------------------------------------
  function int sum_without_ref(input int var1,var2);
    int temp;
    $display("\n\tentered into without ref function");
    temp=var1;
    var1=var2;
    var2=temp;
    $display("\tswapped variables by without using ref ");
    //returning sum of var1+var2
    return var1+var2;
  endfunction : sum_without_ref

endmodule : func_pass_by_ref
