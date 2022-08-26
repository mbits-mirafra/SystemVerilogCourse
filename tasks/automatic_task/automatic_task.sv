//--------------------------------------------------------------------------------------------
// syntax : task_name(arguments);
//
//          task automatic ask_name(arguments);
//          statements;
//          endtask
//
//  This is automatic task were overriding is not possible 
//--------------------------------------------------------------------------------------------
module task_auto();
  
  initial 
  begin
    int Number;
    $display("Number before task =%0d",Number);
    sum_auto(1,Number);
    $display("Number after first task =%0d",Number);
    #5 sum_auto(Number,Number);
    $display("Number after second task =%0d",Number);
  end

  task automatic sum_auto(input int task_var1,output int result);
    result=task_var1+result; 
  endtask
endmodule
