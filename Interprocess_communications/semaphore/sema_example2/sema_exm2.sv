//--------------------------------------------------------------------------------------------
//A semaphore allows you to control access to a resource.
//With help of semaphore method new() we create a semaphore keys
//and help of get method we take a keys from semaphore and put method
//we put keys in semaphore.
//
//--------------------------------------------------------------------------------------------
module semaphore_exm_2;

   semaphore sem=new(6);  //creating semaphore keys

   initial begin :BEGIN_I
      $display("In first initial block At time=[%0t]",$time);
      sem.get(4);    //taking keys from semaphore 
      $display("Thread 1:Accessing 4 keys from semaphore  At time=[%0t]",$time);
      #5;
      sem.put(2);      //puting keys into semaphore 
      $display("Thread 1:Done using 2 keys  At time=[%0t]",$time);
      #20;
      $display("Thread 1:Still using the remainig 2 keys  At time=[%0t]",$time);
   end :BEGIN_I

   initial begin :BEGIN_II
      $display("In second initial block  At time=[%0t]",$time);
      sem.get(5);   //taking keys from semaphore but if keys are not available then block
                    //next statment untill keys are available.
      $display("Thread 2:Accessing 5 keys from semaphore  At time=[%0t]",$time);
      #10;
      sem.put(5);
      $display("Thread 2:Done using 5 keys  At time=[%0t]",$time);
  end :BEGIN_II

endmodule :semaphore_exm_2
