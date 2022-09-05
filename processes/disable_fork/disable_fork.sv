//--------------------------------------------------------------------------------------------
//
//disable_fork:
//
//This is used to disable the fork-join_any, fork-join_none processes at any point 
//of the code.
//
//--------------------------------------------------------------------------------------------

module disable_fork();
  //string a,b,c;
  event e1;
  string a = "Malpe";
  string b = "Kudlu";
  string c;

  initial begin:main //This is a procedural block
   
    #0 $display("main_T-1: [%0t] Values of a = %0s,b = %0s,c = %0s",$time,a,b,c); 

    fork:fork_main
      //-------------------------------------------------------
      //
      //This is a fork-join block.
      //In this block we can have multiple threads like
      //begin-end,$displays
      //Even a fork-join has nested fork-join in it.
      //
      //-------------------------------------------------------
    
          
      #3 b <= "Delta";//Thread 1
      
      #4 $display("T-2: [%0t] Values of a = %0s,b = %0s,c = %0s",$time,a,b,c);//Thread 2
             
      begin:first //Thread 3
        #1 -> e1;
        c = "Hoode";
        #1 $display("T-3: [%0t] Values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      end:first
    
      fork:nested_fork //Thread 4
    
          @(e1.triggered);
          #1 $display("main_T-4: [%0t] Values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
        
      join:nested_fork
      
      #1 $display("T-5: [%0t] Values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      
    join_any:fork_main
    disable fork;
    #1 $display("main_Th-2: [%0t] ending of fork-join",$time);
  
  end:main

endmodule:disable_fork
