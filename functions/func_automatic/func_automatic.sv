module func_automatic();


  task sum(int a, int b);
    #2;
    $display("\t @ %0t ns the sum in static is %0d",$time, a+b);
  endtask
  
  task automatic sum_auto(int a, int b);
    #2;
    $display("\t @ %0t ns the sum in automatic is %0d",$time, a+b);
  endtask
  
  initial
  begin
    $display("\t ----sum using static & automatic function----");
    fork
      begin
        sum(2,3);
        sum_auto(2,3);
      end
    
      begin
        #1;
        sum(3,4);
        sum_auto(3,4);
      end
    join
  end
endmodule: func_automatic
