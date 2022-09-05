//--------------------------------------------------------------------------------------------
//
//disable_fork:
//
//This is used to disable the fork-join_any, fork-join_none processes at any point 
//of the code.
//
//--------------------------------------------------------------------------------------------

module disable_fork();

  event e1;
  string a = "Malpe";
  string b = "Kudlu";
  string c;
  
  initial begin:BEGIN_B1 //This is a procedural block
    
    #0 $display("[%0t] Thread_T1: Values of a = %0s,b = %0s,c = %0s",$time,a,b,c); 
    
    //-------------------------------------------------------
    //
    //This is a fork-join block.
    //In this block we can have multiple threads like
    //begin-end,$displays
    //Even a fork-join has nested fork-join in it.
    //
    //-------------------------------------------------------
    
    fork:FORK_F1
      
      #3 b <= "Delta";//Thread 1
      
      #4 $display("[%0t] Thread_T2: Values of a = %0s,b = %0s,c = %0s",$time,a,b,c);//Thread 2
             
      begin:BEGIN_B2 //Thread 3
        #1 -> e1;
        c = "Hoode";
        #1 $display("[%0t] Thread_T3: Values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      end:BEGIN_B2
      
      fork:FORK_F2 //Thread 4
          @(e1.triggered);
          #1 $display("[%0t] Thread_T4: Values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      join:FORK_F2
      
      #1 $display("[%0t] Thread_T5: Values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      
    join_any:FORK_F1

    disable fork;
    #1 $display("[%0t] Thread_T6: ending of fork-join",$time);
  
  end:BEGIN_B1

endmodule:disable_fork
