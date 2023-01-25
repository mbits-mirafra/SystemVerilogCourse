
module simple_task();
  
  int multiplicand=5,multiplicator=6,result;
  initial
  begin
    $display("\t ----output of simple task calling----");
  mul(multiplicand,multiplicator,result);
  $display("\t @ %0t ns , %0d X %0d = %0d",$time,multiplicand,multiplicator,result);
  end

  task mul(input int var1,var2,output int res);
    #2 res=var1*var2;
  endtask

endmodule
