//----------------------------------------
// Here we are calling a task in function 
//----------------------------------------
module task_from_func;

  initial begin
    $display("\t@ %0t ns, In the initial block",$time);
    $display("\tcalling function");
    #1; 
    //calling function and return from function is ignored by using void
    void'(function_call);
  end
  
  //--------------------------------------------------------
  //decalred function inside calling task in fork join_none
  //Because we can't call task directly in function
  //In general, calling a task from a function is illegal
  //because containts the delays
  //--------------------------------------------------------
  function function_call;
    fork
      $display( "\t@ %0t ns I'm in function",$time); 
      $display("\t@ %0t ns, calling task from func",$time);
      task_call;
    join_none
  endfunction

  //declared task calling from function
  task task_call;
    #1;
    $display( "\t@ %0t ns , I'm in task",$time);
    #1;
    $display("\t@ %0t ns,leaving from task",$time);
  endtask

endmodule : task_from_func
