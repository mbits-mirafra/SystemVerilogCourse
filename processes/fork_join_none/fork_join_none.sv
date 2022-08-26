//--------------------------------------------------------------------------------------------
//
//fork-join_none block:
//
//This is a process control block where it can have multiple threads in it.
//This is very similar to fork-join_any.
//
//Here in fork-join_any it will wait for atleast one of the child thread will finish 
//executing first then only all the main thread will also process parallely where as in 
//fork-join_none the main thread and the child threads are individually process parallely.
//--------------------------------------------------------------------------------------------

module fork_join_none();

  initial begin:main //This is a procedural block

    #5 $display("main_Thread-1: [%0t] starting of fork-join_none",$time); 

    fork:fork_main
      //-------------------------------------------------------
      //
      //This is a fork-join_none block.
      //In this block we can have multiple threads like
      //begin-end,$displays
      //Even a fork-join_none has nested 
      //fork-join,fork-join_any,fork-join_none in it.
      //
      //-------------------------------------------------------

      #0 $display("Thread-1: [%0t] basics of syatem verilog",$time);//Thread 1

      #3 $display("Thread-2: [%0t] data types",$time);//Thread 2
      
      #5 $display("Thread-3: [%0t] control-flow",$time);//Thread 3
      
      begin:first //Thread 4
        #1 $display("Thread-4-1: [%0t] processes",$time);
        #3 $display("Thread-4-2: [%0t] communications",$time);
      end:first
      
      fork:nested_fork_join //Thread 5
        #7 $display("Thread-5-1: [%0t] oops",$time);
        #1 $display("Thread-5-2: [%0t] nested_fork",$time);
      join_any:nested_fork_join
      
      #0 $display("Thread-6: [%0t] fork_join_any",$time);//Thread 6
    join_none:fork_main
    
    #0 $display("main_Thread-2: [%0t] assertions",$time);
    #0 $display("main_Thread-3: [%0t] coverages",$time);

    #10 $display("main_Thread-4: [%0t] ending of fork-join",$time);
  
  end:main

endmodule:fork_join_none
