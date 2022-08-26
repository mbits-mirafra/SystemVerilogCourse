//--------------------------------------------------------------------------------------------
//Fine Grain Process Control Methods
//
//resume():
//
//This command resumes the thread from suspended state.
//--------------------------------------------------------------------------------------------

module fine_resume;
  process p1,p2;
  initial begin:mainbegin //Procedural block
  //-------------------------------------------------------
  //We are resuming p1 for the rest of the code after it
  //getting suspended.
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
        begin
          #1 $display("[%0t] p1_if_in_p1: %s",$time,p1.status());
          p1.suspend(); //p1 is suspended
          #1 $display("[%0t] p2_if_in_p1: %s",$time,p2.status());
        end

      end:fork1_begin1
                                   
      #7 $display("[%0t] p1_2: %s",$time,p1.status());
      #11 $display("[%0t] p1_3: %s",$time,p1.status());
      
      #15
      if(p1.status == process :: SUSPENDED)
      begin
        #1 $display("[%0t] p1_before: %s",$time,p1.status());
        p1.resume();
        #1 $display("[%0t] p1_after: %s",$time,p1.status());
      end

      begin:fork1_begin2
        #1 $display("[%0t] p2",$time);
        p2 = process :: self();
        #5 $display("[%0t] Waiting for bus",$time);
        #1 $display("[%0t] p2_1: %s",$time,p2.status());
        #1 $display("[%0t] p2_2: %s",$time,p2.status());
      end:fork1_begin2
                                                
      #9 $display("[%0t] p2_3: %s",$time,p2.status());
      #9 $display("[%0t] p1_4: %s",$time,p1.status());
                                                   
    join:fork1
  
  end:mainbegin

endmodule:fine_resume

                                                    
