//--------------------------------------------------------------------------------------------
//
//fork-join block:
//
//This is a process control block where it can have multiple threads in it.
//This is similar to begin-end block but there is a difference which is 
//The begin-end works serially but fork-join works parallely.
//
//--------------------------------------------------------------------------------------------

module fork_join();

  event e1;
  int a=5,b=6,c,d;
  initial begin:BEGIN_B1 //This is a procedural block
    
    $display("[%0t] Thread_T1: Values of a= %0d,b= %0d, c= %0d,d= %0d",$time,a,b,c,d); 
    
    //-------------------------------------------------------
    //
    //This is a fork-join block.
    //In this block we can have multiple threads like
    //begin-end,$displays
    //Even a fork-join has nested fork-join in it.
    //
    //-------------------------------------------------------
    
    fork:FORK_F1
      
      begin:BEGIN_B2
        #1 a <= b;
        b <= 7;
        $monitor("[%0t] Thread-T2: Values of a= %0d,b= %0d, c= %0d,d= %0d",$time,a,b,c,d);
        #1 ->e1;
        c = b;
      end:BEGIN_B2
    
      begin:BEGIN_B3
        wait(e1.triggered);
        $display("[%0t] Event is triggered",$time);     
    
        begin:BEGIN_B4 //Thread 4
          #1 d = c;
          b <= 1;
        end:BEGIN_B4

      end:BEGIN_B3

    join:FORK_F1
    
    $display("[%0t] Thread_T3: value of a= %0d,b= %0d, c= %0d,d= %0d",$time,a,b,c,d);

   end:BEGIN_B1

endmodule:fork_join
