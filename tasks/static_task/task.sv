//--------------------------------------------------------------------------------------------
// syntax : task_name(arguments);
//
//          task task_name(arguments);
//          statements;
//          endtask
//
//  This is defaultly static task which has overriding will be there
//--------------------------------------------------------------------------------------------
module task1();
  
  initial 
  begin
    int Number;
    $display("Number before task =%0d",Number);
    sum(1,Number);
    $display("Number after first task =%0d",Number);
    #5 sum(Number,Number);
    $display("Number after second task =%0d",Number);
  end

  task sum(input int task_var1,output int result);
    result=task_var1+result; 
  endtask
endmodule
