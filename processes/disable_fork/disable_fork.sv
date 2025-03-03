//--------------------------------------------------------------------------------------------
//
// disable_fork:
//
// This is used to disable the fork-join_any, fork-join_none processes at any point 
// of the code.
//
//--------------------------------------------------------------------------------------------

module disable_fork();

  event e1;                                 // Event declaration
  string a = "Malpe";                       
  string b = "Kudlu"; 
  string c; 
  
  initial begin:BEGIN_B1                    // This is a procedural block
    
    #0 $display("[%0t] Thread_T1: Values of a = %0s, b = %0s, c = %0s", $time, a, b, c); 
    
    //-------------------------------------------------------
    //
    // This is a fork-join_any block.
    // In this block, multiple threads can execute in parallel.
    // The fork-join_any construct allows the main thread to continue execution
    // as soon as any one of the child threads finishes execution.
    //
    //-------------------------------------------------------

    fork:FORK_F1                            // Fork block containing multiple parallel threads
      
      #3 b <= "Delta";                      // Thread 1: Assign a new value to b after 3 time units
      
      #4 $display("[%0t] Thread_T2: Values of a = %0s, b = %0s, c = %0s", $time, a, b, c); // Thread 2
             
      begin:BEGIN_B2                        // Thread 3
        #1 -> e1;                           // Trigger event e1 after 1 time unit
        c = "Hoode";                        // Assign a new value to c
        #1 $display("[%0t] Thread_T3: Values of a = %0s, b = %0s, c = %0s", $time, a, b, c);
      end:BEGIN_B2
      
      fork:FORK_F2                          // Thread 4: Nested fork block
          @(e1.triggered);                  // Wait for event e1 to be triggered
          #1 $display("[%0t] Thread_T4: Values of a = %0s, b = %0s, c = %0s", $time, a, b, c);
      join:FORK_F2                          // Ensures all child threads in FORK_F2 finish execution before continuing
      
      #1 $display("[%0t] Thread_T5: Values of a = %0s, b = %0s, c = %0s", $time, a, b, c);
      
    join_any:FORK_F1                        // Allows the main thread to continue execution once any thread finishes

    disable fork;                           // Disables all forked processes
    #1 $display("[%0t] Thread_T6: ending of fork-join", $time);
  
  end:BEGIN_B1

endmodule:disable_fork

