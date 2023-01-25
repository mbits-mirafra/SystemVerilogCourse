 module disable_task();
  
  initial 
  begin
    $display("\t ----output of disable task----");
    fork
    display_task();
    #20 disable display_task.task_A;
    join
  end

  task display_task();
    begin : task_A
      $display("\t @ %0t ns , task_A initiated",$time);
      #30 $display("\t @ %0t ns , task_A finished",$time);
    end :task_A

  begin : task_B
    $display("\t @ %0t ns , task_B initiated",$time);
    #10 $display("\t @ %0t ns , task_B finished",$time);
  end :task_B

  endtask
 endmodule
