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

  int a,b,c;
  event e1,e2;

  initial begin:main //This is a procedural block

    a = 5;
    $display("parent_Thread-1:[%0t] a = %0d, b = %0d, c = %0d",$time,a,b,c); 
    
    #1 b = 3;
    c <= 8;
    $display("parent_Thread-2:[%0t] a = %0d, b = %0d, c = %0d",$time,a,b,c);
    #1 $display("parent_Thread-2:[%0t] a = %0d, b = %0d, c = %0d",$time,a,b,c);
           
    /*
    fork:fork_main
      //-------------------------------------------------------
      //
      //This is a fork-join block.
      //In this block we can have multiple threads like
      //begin-end,$displays
      //Even a fork-join has nested fork-join/fork-join_any/
      //fork-join_none in it.
      //
      //-------------------------------------------------------
      
      #1 $display("Thread-1: [%0t] a = %0d, b = %0d, c = %0d",$time,a,b,c);//Thread 1
      #0 a <= 1;
      #0 b = 2;
      #0 c <= 3;
      #0 $display("Thread-2: [%0t] a = %0d, b = %0d, c = %0d",$time,a,b,c);//Thread 2
      
      #5 $display("Thread-3: [%0t] control-flow",$time);//Thread 3

      ->e1;

      begin:first //Thread 4
        wait(e1.triggered);
        $display("Thread-9: [%0t] a = %0d, b = %0d, c = %0d",$time,a,b,c);//Thread 9
        #3 $display("Thread-4-1: [%0t] processes",$time);
        ->e2;
        #3 $display("Thread-4-2: [%0t] communications",$time);
      end:first
      
      fork:nested_fork //Thread 5
        wait(e2.triggered);
        #1 $display("Thread-5-1: [%0t] oops",$time);
        #0 $display("Thread-5-2: [%0t] nested_fork",$time);
      join:nested_fork
      
      #2 $display("Thread-6: [%0t]assertions",$time);//Thread 6
      #3 $display("Thread-7: [%0t] coverages",$time);//Thread 7

    join:fork_main
    
    #1 $display("main_Thread-2: [%0t] ending of fork-join",$time);
*/
  end:main

endmodule:sample
