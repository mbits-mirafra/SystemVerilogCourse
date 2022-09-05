//--------------------------------------------------------------------------------------------
//
//fork-join_none block: 
//
//This is a process control block where it can have multiple threads in it. 
// 
//
//Here in fork-join all the main Threads after join will wait until all the child Threads 
//get executed but where as in fork-join_none both the child and main executes parallelly.  
//
//--------------------------------------------------------------------------------------------

module fork_join_none();

  event e1;
  string a,b,c,d,e;

  initial begin:main //This is a procedural block

    $display("[%0t] main_Th:Starting of fork_join_any",$time);// Main Thread 
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
    fork:fork_main
      
      begin:first//Thread 1

        #1 $display("T-1:[%0t] Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);    
      
            b <= a;

            #1 $display("T-1_2: [%0t] Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);

        end:first
      
        fork:nested_fork//Thread 2
          
            #1 -> e1;

            $display("T-2: [%0t] Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);
        
          
      join:nested_fork
      
    join_none:fork_main

    #1 $display("T-3: [%0t] Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);//Thread 3
    
    
      wait(e1.triggered);
      d = "Kodi";
      #1 $monitor("T-4: [%0t] Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);//Thread 4
    

  
  end:main

endmodule:fork_join_none
