//--------------------------------------------------------------------------------------------
//
//fork-join block:
//
//This is a process control block where it can have multiple threads in it.
//This is similar to begin-end block but there is a difference which is 
//The begin-end works serially but fork-join works parallely.
//
//--------------------------------------------------------------------------------------------

module sample();

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
      
      #9 $display("Thread-6: [%0t]assertions",$time);//Thread 6
      #1 $display("Thread-7: [%0t] coverages",$time);//Thread 7

    join:fork_main
    
    #10 $display("main_Thread-2: [%0t] ending of fork-join",$time);
  
  end:main

endmodule:sample
