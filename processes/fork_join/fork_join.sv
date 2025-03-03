//--------------------------------------------------------------------------------------------
//
// fork-join block:
//
// This is a process control block where it can have multiple threads in it.
// This is similar to the begin-end block, but there is a key difference:
// The begin-end block executes serially, whereas fork-join executes in parallel.
//
//--------------------------------------------------------------------------------------------

module fork_join();

  event e1;                                 // Event declaration
  int a = 5, b = 6, c, d;                   // Variable declarations with initial values for 'a' and 'b'

  initial begin:BEGIN_B1                    // This is a procedural block
    
    $display("[%0t] Thread_T1: Values of a= %0d,b= %0d, c= %0d,d= %0d", $time, a, b, c, d); 
    
    //-------------------------------------------------------
    //
    // This is a fork-join block.
    // In this block, multiple threads execute in parallel.
    // The fork-join construct allows all threads inside it to complete execution
    // before the main thread continues execution.
    // Nested fork-join blocks are also allowed inside a fork-join block.
    //
    //-------------------------------------------------------

    fork:FORK_F1                            // Fork block starts execution in parallel

      begin:BEGIN_B2                        // Thread 1
        #1 a <= b;                          // Assign the value of 'b' to 'a' after 1 time unit
        b <= 7;                             // Assign a new value to 'b' immediately
        $monitor("[%0t] Thread-T2: Values of a= %0d,b= %0d, c= %0d,d= %0d", $time, a, b, c, d); // Continuous monitoring
        #1 -> e1;                           // Trigger event e1 after 1 time unit
        c = b;                              // Assign the value of 'b' to 'c'
      end:BEGIN_B2
    
      begin:BEGIN_B3                        // Thread 2
        wait(e1.triggered);                 // Wait until event e1 is triggered
        $display("[%0t] Event is triggered", $time);     

        begin:BEGIN_B4                      // Thread 3 (nested fork block)
          #1 d = c;                         // Assign value of 'c' to 'd' after 1 time unit
          b <= 1;                           // Assign a new value to 'b'
        end:BEGIN_B4

      end:BEGIN_B3

    join:FORK_F1                            // Waits until all threads inside the fork block finish execution
    
    $display("[%0t] Thread_T3: value of a= %0d,b= %0d, c= %0d,d= %0d", $time, a, b, c, d);

   end:BEGIN_B1

endmodule:fork_join

