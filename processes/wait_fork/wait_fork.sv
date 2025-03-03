//--------------------------------------------------------------------------------------------
//
// wait fork:
//
// This is used to wait for all the threads in the fork block to get executed before 
// the remaining main threads continue execution. It ensures that the main thread will 
// not proceed until all the child threads have completed their execution.
//
//--------------------------------------------------------------------------------------------

module wait_fork();
  
  event e1;                                 // Event declaration
  string a = "Malpe";                       
  string b = "kudlu";                       
  string c;   
  
  initial begin:BEGIN_B1                    // This is a procedural block
    
    #1 $display("[%0t] Thread_T1: values of a = %0s,b = %0s,c = %0s", $time, a, b, c); // Main Thread display
    
    //-------------------------------------------------------
    //
    // This is a fork-join block.
    // In this block, we can have multiple threads like begin-end or $displays.
    // Even a fork-join can have nested fork-join blocks in it.
    //
    //-------------------------------------------------------
    
    fork:FORK_F1                            // Thread 2
    
      #2 b <= "Delta";                      // Assign value to 'b' after 2 time units

      #0 $display("[%0t] Thread_T2: values of a = %0s,b = %0s,c = %0s", $time, a, b, c); // Thread 2 display
                
      begin:BEGIN_B2                        // Thread 2-3
        #1 -> e1;                           // Trigger event 'e1' after 1 time unit
        c = "Hoode";                        // Assign value to 'c'
        #1 $display("[%0t] Thread_T3: values of a = %0s,b = %0s,c = %0s", $time, a, b, c); // Thread 3 display
      end:BEGIN_B2
      
      fork:FORK_F2                          // Thread 2-4
        wait(e1.triggered);                 // Wait for event 'e1' to be triggered
        #2 $display("[%0t] Thread_T4: values of a = %0s,b = %0s,c = %0s", $time, a, b, c); // Thread 4 display
      join:FORK_F2                          // This ensures that Thread 4 finishes before proceeding
      
      #1 $display("[%0t] Thread_T5: values of a = %0s,b = %0s,c = %0s", $time, a, b, c); // Thread 5 display (Thread 3)

    join_none:FORK_F1                       // This allows the main thread to proceed without waiting for the completion of child threads
    
    wait fork;                              // Wait for all threads in the fork block to complete
    #0 $monitor("[%0t] Thread_T6: values of a = %0s,b = %0s,c = %0s", $time, a, b, c); // Continuous monitoring for Thread 6
  
  end:BEGIN_B1

endmodule:wait_fork

