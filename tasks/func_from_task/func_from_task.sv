module func_from_task;
  initial begin
    $display("\t ----output for func from task----");
    $display("\t@ %0t ns, In the initial block",$time);
    $display("\tcalling task");
    //calling task 
    task_sum;
    $display("\treturned to intial from function");
  end
  //declared task
  task task_sum;
    #1;
    $display( "\t@ %0t ns , I'm in task",$time);
    $display("\tcalling func inside a task");
    #1;
    //calling function and return from function is ingnore by using void 
    void'(function_sum);
    $display("\treturned to task from function");
  endtask
  //declared function
  function function_sum;
    $display( "\t@ %0t ns I'm in function",$time); 
  endfunction

endmodule : func_from_task
