//--------------------------------------------------------------------------------------------
//
// fork-join_none block:
//
// This is a process control block where it can have multiple threads in it. 
// In a typical fork-join block, all the main threads will wait until all child threads 
// complete execution after the join statement. However, in a fork-join_none block, 
// both the child threads and the main thread execute in parallel without waiting for 
// the completion of the child threads. 
//
//--------------------------------------------------------------------------------------------

module fork_join_none();

  event e1;                                 // Event declaration
  string a, b, c, d; 
  
  initial begin:BEGIN_B1                    // This is a procedural block
    
    $display("[%0t] Thread_T1: Starting of fork_join_none", $time); // Main Thread 
    a = "Kapu";                             // Assign value to 'a'
    c = "Malpe";                            // Assign value to 'c'
    
    //-------------------------------------------------------
    //
    // This is a fork-join_none block.
    // It allows parallel execution of both child threads and the main thread.
    // The main thread will continue execution in parallel without waiting for
    // the child threads to complete.
    //
    //-------------------------------------------------------
    
    fork:FORK_F1
      
      begin:BEGIN_B2                        // Thread 1
        #1 $display("[%0t] Thread_T2: Values of a =%0s,b =%0s,c =%0s,d =%0s", $time, a, b, c, d);    
        b <= a;                             // Assign 'a' to 'b'
        #1 $display("[%0t] Thread_T3: Values of a =%0s,b =%0s,c =%0s,d =%0s", $time, a, b, c, d);
      end:BEGIN_B2
      
      fork:FORK_F2                          // Thread 2
        #2 -> e1;                           // Trigger event 'e1' after 2 time units
        $display("[%0t] Thread_T4: Values of a =%0s,b =%0s,c =%0s,d =%0s", $time, a, b, c, d);
      join:FORK_F2                          // This waits for the completion of Fork_F2 before continuing
      
    join_none:FORK_F1                       // This allows the main thread to continue execution while the child threads run in parallel

    #1 $display("[%0t] Thread_T5: Values of a =%0s,b =%0s,c =%0s,d =%0s", $time, a, b, c, d); // Thread 3
    wait(e1.triggered);                     // Wait for event 'e1' to be triggered
    d = "Kodi";                             // Assign value to 'd'
    $monitor("[%0t] Thread_T6: Values of a =%0s,b =%0s,c =%0s,d =%0s", $time, a, b, c, d); // Continuous monitoring for Thread 4
  
  end:BEGIN_B1

endmodule:fork_join_none

