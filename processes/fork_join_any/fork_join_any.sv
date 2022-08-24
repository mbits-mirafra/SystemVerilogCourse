//--------------------------------------------------------------------------------------------
//
//fork-join_any block:
//
//This is a process control block where it can have multiple threads in it.
//This is similar to begin-end block but there is a difference which is 
//The begin-end works serially but fork-join_any works parallely.
//
//This is very similar to fork-join block here the main thread in fork-join will wait until all
//the child threads get executed but where as in fork-join_any any of the one child thread get
//executed the main thread will also works parallely to child threads.
//--------------------------------------------------------------------------------------------

module fork_join_any();

  initial begin:main //This is a procedural block

    #5 $display("main_Thread-1: [%0t] starting of fork-join",$time); 

    fork:fork_main
      //-------------------------------------------------------
      //
      //This is a fork-join block.
      //In this block we can have multiple threads like
      //begin-end,$displays
      //Even a fork-join has nested fork-join in it.
      //
      //-------------------------------------------------------

      #0 $display("Thread-1: [%0t] basics of syatem verilog",$time);//Thread 1

      #3 $display("Thread-2: [%0t] data types",$time);//Thread 2
      
      #5 $display("Thread-3: [%0t] control-flow",$time);//Thread 3
      
      begin:first //Thread 4
        #1 $display("Thread-4-1: [%0t] processes",$time);
        #3 $display("Thread-4-2: [%0t] communications",$time);
      end:first
      
      fork:nested_fork //Thread 5
        #7 $display("Thread-5-1: [%0t] oops",$time);
        #0 $display("Thread-5-2: [%0t] nested_fork",$time);
      join:nested_fork
      
    join_any:fork_main

    #1 $display("main_Thread-2: [%0t]assertions",$time);//Thread 6
    #3 $display("main_Thread-3: [%0t] coverages",$time);//Thread 7
      
    #10 $display("main_Thread-4: [%0t] ending of fork-join",$time);
  
  end:main

endmodule:fork_join_any
