//--------------------------------------------------------------------------------------------
//
// fork-join_any block:
//
// This is a process control block where it can have multiple threads in it.
// This is very similar to a fork-join block. 
// The key difference is:
// In a fork-join block, the main thread waits until all child threads complete execution.
// In a fork-join_any block, as soon as any one child thread finishes, 
// the main thread continues execution in parallel with the remaining child threads.
//
//--------------------------------------------------------------------------------------------

module fork_join_any();

  event e1;                                 // Event declaration
  string a, b, c, d; 
  
  initial begin:BEGIN_B1                    // This is a procedural block
    
    $display("[%0t] Thread_T1: Starting of fork_join_any", $time); 
                                            // Main Thread 
    a = "Kapu";                             // Assign value to 'a'
    c = "Malpe";                            // Assign value to 'c'
    
    //-------------------------------------------------------
    //
    // This is a fork-join_any block.
    // In this block, multiple threads execute in parallel.
    // Unlike fork-join, here the main thread does not wait for all child threads to complete.
    // As soon as any one thread completes execution, the main thread continues execution.
    //
    //-------------------------------------------------------
    
    fork:FORK_F1
      
      begin:BEGIN_B2                        // Thread 1
        #0 $display("[%0t] Thread_T2: Values of a =%0s,b =%0s,c =%0s,d =%0s", $time, a, b, c, d);    
        
        begin:BEGIN_B3                      // Nested Thread inside Thread 1
          b <= a;                           // Assign the value of 'a' to 'b'
          #1 $display("[%0t] Thread_T3: Values of a =%0s,b =%0s,c =%0s,d =%0s", $time, a, b, c, d);
        end:BEGIN_B3
      
      end:BEGIN_B2
      
      fork:FORK_F2                          // Thread 2
        
        begin:BEGIN_B4                      // Sub-thread inside Thread 2
          #3 -> e1;                         // Trigger event 'e1' after 3 time units
          $display("[%0t] Thread_T4: Values of a =%0s,b =%0s,c =%0s,d =%0s", $time, a, b, c, d);
        end:BEGIN_B4
          
      join:FORK_F2                          // All threads inside FORK_F2 must finish before proceeding
      
    join_any:FORK_F1                        // As soon as any one thread inside FORK_F1 completes, execution continues

    #1 $display("[%0t] Thread_T5: Values of a =%0s,b =%0s,c =%0s,d =%0s", $time, a, b, c, d); 
                                            // Thread 3
    
    begin:BEGIN_B5                          // Thread 4
      wait(e1.triggered);                   // Wait until event 'e1' is triggered
      d = "Kodi";                           // Assign value to 'd'
      $monitor("[%0t] Thread_T6: Values of a =%0s,b =%0s,c =%0s,d =%0s", $time, a, b, c, d); // Continuous monitoring
    end:BEGIN_B5
  
  end:BEGIN_B1

endmodule:fork_join_any

