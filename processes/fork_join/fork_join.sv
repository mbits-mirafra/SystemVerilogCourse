//--------------------------------------------------------------------------------------------
//
//fork-join block:
//
//This is a process control block where it can have multiple threads in it.
//This is similar to begin-end block but there is a difference which is 
//The begin-end works serially but fork-join works parallely.
//
//--------------------------------------------------------------------------------------------

module sample();

  event e1;
  int a=5,b=6,c,d;
  string str;
  initial begin:main //This is a procedural block

    $display("[%0t]Thread-1: Values of a= %0d,b= %0d, c= %0d,d= %0d",$time,a,b,c,d); 

    //-------------------------------------------------------
    //
    //This is a fork-join block.
    //In this block we can have multiple threads like
    //begin-end,$displays
    //Even a fork-join has nested fork-join in it.
    //
    //-------------------------------------------------------

    fork:fork_main
      
      begin:first
        #1 a <= b;
        b <= 7;
        $monitor("[%0t]Thread-1: Values of a= %0d,b= %0d, c= %0d,d= %0d",$time,a,b,c,d);
        
        #1 ->e1;
        c = b;
      end:first
    
      begin:second
        wait(e1.triggered);
        $display("[%0t] Event is triggered",$time);     
        
        begin:first_2 //Thread 4
          #1 d = c;         
        end:first_2

      end:second

    join:fork_main

  end:main

endmodule:sample
