module task_fact();
  //declare variables
  int result1,result2,var1,var2;
  //declare event varibles
  event a,b;

  // declare task to calculate factorial using static storage
  // by default task is static
  task factorial_static(int var1);
    // If var1 is less than 2 then assigin result1=1 and trigger event a
    // and greater than or eaqual to 2 then recursive call this task
    // and perform factorial operation
    #1;
    if(var1>=2) begin
      factorial_static(var1-1);
      result1=result1*var1;
    end
    else begin
      // assign value 1 to result1
      result1=1;
      //trigger even a
      ->a;
    end
  endtask
  
  // declare task automatic storage
  // declare task to calculate factorial using automatic storage
  // explicit written automatic keyword for this task
  task automatic factorial_automatic(int var2);
    // If var2 is less than 2 then assign result2=1 and trigger event b
    // and greater than or eaqual to 2 then recursive call this task
    // and perform factorial operation
    #1;
    if(var2>=2) begin
      factorial_automatic(var2-1);
      result2=result2*var2;
    end
    else begin
      // assigning value 1 to result2
      result2=1;
      //trigger even b
      ->b;
    end
  endtask

  initial begin
    $display("\t ----factorial using static & automatic task----");
    //calling both task parallel
    fork
      //calling task and Compute factorial using static task
      factorial_static(5);
      //calling task and Compute factorial using automatic task
      factorial_automatic(5);
    join

    //waiting both event trigger parallel
    fork
      //waiting even a to trigger
      wait(a.triggered);
      $display("@ %0t ns , factorial_static:%0d",$time,result1);
      //waiting even b to trigger
      wait(b.triggered);
      $display("@ %0t ns , factorial_automatic:%0d",$time,result2);
    join
  end
endmodule: task_fact
