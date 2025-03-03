//--------------------------------------------------------------------------------------------
//A semaphore allows you to control access to a resource.
//With help of semaphore method new() we create a semaphore keys
//and help of get method we take a keys from semaphore and put method
//we put keys in semaphore.
//
//--------------------------------------------------------------------------------------------
module semaphore_exm_2;

  // Create a semaphore with 6 keys
  semaphore sem = new(6);

  // .......................Process-1 (Thread 1).................................................

  initial begin : BEGIN_I
    $display("In first initial block At time=[%0t]", $time);

    sem.get(4);  // Take 4 keys from the semaphore
    $display("Thread 1: Accessing 4 keys from semaphore At time=[%0t]", $time);

    #5;
    sem.put(2);  // Put back 2 keys into the semaphore
    $display("Thread 1: Done using 2 keys At time=[%0t]", $time);

    #20;
    $display("Thread 1: Still using the remaining 2 keys At time=[%0t]", $time);
  end : BEGIN_I

  // .......................Process-2 (Thread 2).................................................

  initial begin : BEGIN_II
    $display("In second initial block At time=[%0t]", $time);

    sem.get(5);  // Request 5 keys from the semaphore
                 // If keys are unavailable, this process will block until they become available

    $display("Thread 2: Accessing 5 keys from semaphore At time=[%0t]", $time);

    #10;
    sem.put(5);  // Put back all 5 keys into the semaphore
    $display("Thread 2: Done using 5 keys At time=[%0t]", $time);
  end : BEGIN_II

endmodule : semaphore_exm_2

