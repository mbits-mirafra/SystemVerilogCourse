//--------------------------------------------------------------------------------------------
//Function with pass by value
//
//syntax : function_result=function_name(arguements)
//         
//         function function_name(arguements)
//            statements
//            return result/expression ;
//         endfunction
//--------------------------------------------------------------------------------------------
module func_by_value();

    int addend=5,augend=6;
    int result;
  
  initial 
  begin : main_proc_block
    //displaying the values before calling function
    $display("Result= %0d , addend= %0d , augend= %0d",result,addend,augend);
    result = sum_swap(addend,augend);
    //displaying the values after calling function
    $display("Result= %0d , addend= %0d , augend= %0d",result,addend,augend);
  
  end : main_proc_block
  //-------------------------------------------------------
  // This is the function , here sum of two arguements will be final result
  // and arguements were not swapped bcoz this is function_by_value so refernce arguements were not changed
  //-------------------------------------------------------
  function int sum_swap(int var1,var2);//, output int res);
    int temp,res;
    temp = var1;
    res=var1+var2;
    var1=var2;
    var2=temp;

    return res;
  endfunction

endmodule : func_by_value


