//--------------------------------------------------------------------------------------------
//Function with pass by reference
//
//syntax : function_result=function_name(arguements)
//         
//         function automatic function_name(arguements)
//            statements
//            return result/expression ;
//         endfunction
//--------------------------------------------------------------------------------------------
module func_by_ref();

    int addend=5,augend=6;
    int result;
  
  initial 
  begin : main_proc_block
    //displaying the values before calling function
    $display("Result= %0d , addend= %0d , augend= %0d",result,addend,augend);
    result = sum_swap(addend,augend,result);
    //displaying the values after calling function
    $display("Result= %0d , addend= %0d , augend= %0d",result,addend,augend);
  
  end : main_proc_block
  //-------------------------------------------------------
  // This is the function , here sum of two arguements will be final result
  // and arguements are swapped
  // In function by reference we need to add keywords ref and automatic as shown
  //-------------------------------------------------------
  function automatic int sum_swap(ref int var1,var2, output int res);
    int temp = var1;
    res=var1+var2;
    var1=var2;
    var2=temp;

    return res;
  endfunction

endmodule : func_by_ref

