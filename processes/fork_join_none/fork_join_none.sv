//--------------------------------------------------------------------------------------------
//
//fork-join_none block: 
//
//This is a process control block where it can have multiple threads in it. 
//Here in fork-join all the main Threads after join will wait until all the child Threads 
//get executed but where as in fork-join_none both the child and main executes parallelly.  
//
//--------------------------------------------------------------------------------------------

module fork_join_none();

  event e1;
  string a,b,c,d;
  
  initial begin:BEGIN_B1 //This is a procedural block
    
    $display("[%0t] Thread_T1: Starting of fork_join_none",$time);// Main Thread 
    a = "Kapu";
    c = "Malpe";
    
    //-------------------------------------------------------
    //
    //This is a fork-join block.
    //In this block we can have multiple threads like
    //begin-end,$displays
    //Even a fork-join_any has nested fork-join in it.
    //
    //-------------------------------------------------------
    
    fork:FORK_F1
      
      begin:BEGIN_B2
        #1 $display("[%0t] Thread_T2: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);    
        b <= a;
        #1 $display("[%0t] Thread_T3: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);
      end:BEGIN_B2
      
      fork:FORK_F2
        #2 -> e1;
        $display("[%0t] Thread_T4: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);
      join:FORK_F2
      
    join_none:FORK_F1

    #1 $display("[%0t] Thread_T5: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);//Thread 3
    wait(e1.triggered);
    d = "Kodi";
    $monitor("[%0t] Thread_T6: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);//Thread 4
  
  end:BEGIN_B1

endmodule:fork_join_none
