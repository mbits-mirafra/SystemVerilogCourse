module func_automatic();
  // Declare integer variables
  int result1,result2;
  // declare Function to calculate factorial using static storage
  // by default function is static
  function int factorial_static(int var1);
    // If var1 is less than 2 then return 1
    // and greater than or eaqual to 2 then recursive call this function
    // and perform factorial operation
    if(var1>=2)
      result1=factorial_static(var1-1)*var1;
    else begin
      result1=1;
    end
    // Return computed factorial value
    return result1;
  endfunction

  // declare Function to calculate factorial using automatic storage
  // explicit written automatic keyword for this function
  function automatic int factorial_automatic(int var1);
    // If var1 is less than 2 then return 1
    // and greater than or eaqual to 2 then recursive call this function
    // and perform factorial operation
    if(var1>=2)
      result2=factorial_automatic(var1-1)*var1;
    else begin
      result2=1;
    end
    // Return computed factorial value
    return result2;
  endfunction

  initial begin
    //calling function and Compute factorial using static function
    result1=factorial_static(5);
    //calling function and Compute factorial using automatic function
    result2=factorial_automatic(5);
    $display("\nfactorial_static:%0d",result1);
    $display("factorial_automatic:%0d\n",result2);
  end
endmodule: func_automatic
