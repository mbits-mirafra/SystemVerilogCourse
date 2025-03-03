module disable_task(); 
  initial begin
    $display("\t ----output of disable task----");
    //declare fork-join process and calling task inside that
    fork
      //calling task
      display_task();
      //waiting delay 20
      #20;
      //after 20ns disabling task_A thread using disable keyword
      disable display_task.task_A;
    join
  end
  //declared task and task includ 2 thread
  task display_task();
    //declared task_A and printing initiated and finished
    begin : task_A
      $display("\t @ %0t ns , task_A initiated",$time);
      #30;
      $display("\t @ %0t ns , task_A finished",$time);
    end :task_A

    //declared task_B and printing initiated and finished
    begin : task_B
      $display("\t @ %0t ns , task_B initiated",$time);
      #10;
      $display("\t @ %0t ns , task_B finished",$time);
    end :task_B
  endtask

endmodule
