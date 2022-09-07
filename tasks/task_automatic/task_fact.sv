module task_fact();

    int result1,result2,var1,var2;
    event a,b; 
    task factorial_static(int var1);
    #1;
    if(var1>=2)
    begin
      factorial_static(var1-1);
      result1=result1*var1;
    end
    else
      begin
        result1=1;
        ->a;
      end
    endtask
  
    task automatic factorial_automatic(int var2);
      #1;
      if(var2>=2)
      begin
        factorial_automatic(var2-1);
        result2=result2*var2;
      end
      else
      begin
        result2=1;
        ->b;
      end
    endtask

  initial
  begin
    $display("\t ----factorial using static & automatic task----");
    fork
      factorial_static(5);
      factorial_automatic(5);
    join
    fork
    wait(a.triggered);
    $display("@ %0t ns , factorial_static:%0d",$time,result1);
    wait(b.triggered);
    $display("@ %0t ns , factorial_automatic:%0d",$time,result2);
  join
  end
endmodule: task_fact
