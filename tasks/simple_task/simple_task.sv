module simple_task();
  //declare variables with value
  int multiplicand=5;
  int multiplicator=6;
  int result;

  initial begin
    $display("\t ----output of simple task calling----");
    //calling task and passing argument as variables 
    mul(multiplicand,multiplicator,result);
    $display("\t @ %0t ns , %0d X %0d = %0d",$time,multiplicand,multiplicator,result);
  end

  //declare task with input output arguments
  task mul(input int var1,var2,output int res);
    #2;
    //after 2ns delay assiging value in result
    res=var1*var2;
  endtask

endmodule
