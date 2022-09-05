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
 initial begin:main //This is a procedural block

    #1 $display("main_Th-1: [%0t] values of a = %0s,b = %0s,c = %0s",$time,a,b,c); 

    fork:fork_main//Thread 2
      //-------------------------------------------------------
      //
      //This is a fork-join block.
      //In this block we can have multiple threads like
      //begin-end,$displays
      //Even a fork-join has nested fork-join in it.
      //
      //-------------------------------------------------------

      #0 b <= "Delta";//T2-1

      #0 $display("T2-2: [%0t] values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
                
      begin:first //Thread 2-3
        #1 -> e1;
        c = "Hoode";
        
        #1 $display("T2-3: [%0t] values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      end:first
      
      fork:nested_fork //Thread 2-4
        wait(e1.triggered);
        #2 $display("T2-4: [%0t] values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      join:nested_fork
      
      #1 $display("T-3: [%0t] values of a = %0s,b = %0s,c = %0s",$time,a,b,c);//Thread 3

    join_none:fork_main
    
    wait fork;

    #0 $display("T-6: [%0t] values of a = %0s,b = %0s,c = %0s",$time,a,b,c);//Thread 6
  
  end:main

endmodule:wait_fork
