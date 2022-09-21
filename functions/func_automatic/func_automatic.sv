module func_automatic();


    int result1,result2;
    function int factorial_static(int var1);
    if(var1>=2)
      result1=factorial_static(var1-1)*var1;
    else
      begin
        result1=1;
      end
      return result1;
    endfunction
  
    function automatic int factorial_automatic(int var1);
      if(var1>=2)
        result2=factorial_automatic(var1-1)*var1;
      else
      begin
        result2=1;
      end
      return result2;
    endfunction

  initial
  begin
      result1=factorial_static(5);
      result2=factorial_automatic(5);
    $display("factorial_static:%0d",result1);
    $display("factorial_automatic:%0d",result2);
  end
endmodule: func_automatic
