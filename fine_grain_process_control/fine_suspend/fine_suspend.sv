//--------------------------------------------------------------------------------------------
//Fine Grain Process Control Methods
//
//suspend():
//
// This command will suspends the thread for some indefinite time.
//--------------------------------------------------------------------------------------------

module fine_suspend;
  process p1,p2;
  initial begin:main_begin //Procedural block
    //-------------------------------------------------------
    //We are suspending p1 for the rest of the code once it
    //satisfies if condition.
    //
    //-------------------------------------------------------
    $display("[%0t] Seeking status:",$time);
                 
    fork:fork1
                   
      begin:fork1_begin1
        
        #1 $display("[%0t] p1",$time);
        p1 = process :: self();
        #1 $display("[%0t] I'm in Amalfi Coast, Italy",$time);
        #1 $display("[%0t] p1_1: %s",$time,p1.status());
      
        if(p1.status() != process :: FINISHED)
        begin:begin_suspend
          #1 $display("[%0t] p1_if: %s",$time,p1.status());
          p1.suspend();
          #1 $display("[%0t] p2_if: %s",$time,p2.status());
        end:begin_suspend
    
      end:fork1_begin1
                                      
      #7 $display("[%0t] p1_2: %s",$time,p1.status());
      #11 $display("[%0t] p1_3: %s",$time,p1.status());
                                          
      begin:fork1_begin2
        
        #1 $display("[%0t] p2",$time);
        p2 = process :: self();
        #5 $display("[%0t] Waiting for bus",$time);
        #1 $display("[%0t] p2_1: %s",$time,p2.status());
        #1 $display("[%0t] p2_2: %s",$time,p2.status());
    
      end:fork1_begin2
                                                    
      #9 $display("[%0t] p2_3: %s",$time,p2.status());
                                                       
    join:fork1
                                                         
  end:main_begin

endmodule:fine_suspend

