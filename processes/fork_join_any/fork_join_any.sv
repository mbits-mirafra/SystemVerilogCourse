//--------------------------------------------------------------------------------------------
//
//fork-join_any block: 
//
//This is a process control block where it can have multiple threads in it. 
//This is very similar to fork-join block. 
//
//Here in fork-join all the main Threads after join will wait until all the child Threads 
//get executed but where as in fork-join_any any of the one child thread get executed 
//then all the main thread will also works parallely to child threads.
//--------------------------------------------------------------------------------------------

module fork_join_any();

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

        #0 $display("T-1:[%0t] Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);    
      
        begin:first_1
            b <= a;

            #1 $display("T-1_2: [%0t] Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);
          end
        end:first
      
        fork:nested_fork//Thread 2
          begin
            #3 -> e1;

            $display("T-2: [%0t] Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);
          end
          
      join:nested_fork
      
    join_any:fork_main

    #1 $display("T-3: [%0t] Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);//Thread 3
    
    begin
      wait(e1.triggered);
      d = "Kodi";
      #1 $monitor("T-4: [%0t] Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);//Thread 4
    end

  
  end:main

endmodule:fork_join_any
