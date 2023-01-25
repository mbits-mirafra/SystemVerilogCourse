//--------------------------------------------------------------------------------------------
//
//wait fork:
//
//This is used to wait for all the Threads of the entire 
//fork block to get executed then all the remaining main Threads will get executed.
//
//--------------------------------------------------------------------------------------------
module wait_fork();
  
  event e1;
  string a = "Malpe";
  string b = "kudlu";
  string c;
  
  initial begin:BEGIN_B1 //This is a procedural block
    
    #1 $display("[%0t] Thread_T1: values of a = %0s,b = %0s,c = %0s",$time,a,b,c); 
    
    //-------------------------------------------------------
    //
    //This is a fork-join block.
    //In this block we can have multiple threads like
    //begin-end,$displays
    //Even a fork-join has nested fork-join in it.
    //
    //-------------------------------------------------------

    fork:FORK_F1 //Thread 2
    
      #2 b <= "Delta";//T2-1

      #0 $display("[%0t] Thread_T2: values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
                
      begin:BEGIN_B2 //Thread 2-3
        #1 -> e1;
        c = "Hoode";
        #1 $display("[%0t] Thread_T3: values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      end:BEGIN_B2
      
      fork:FORK_F2 //Thread 2-4
        wait(e1.triggered);
        #2 $display("[%0t] Thread_T4: values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      join:FORK_F2
      
      #1 $display("[%0t] Thread_T5: values of a = %0s,b = %0s,c = %0s",$time,a,b,c);//Thread 3

    join_none:FORK_F1
    
    wait fork;
    #0 $monitor("[%0t] Thread_T6: values of a = %0s,b = %0s,c = %0s",$time,a,b,c);//Thread 6
  
  end:BEGIN_B1

endmodule:wait_fork
