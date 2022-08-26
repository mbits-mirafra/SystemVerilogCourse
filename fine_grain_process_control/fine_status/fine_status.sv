//--------------------------------------------------------------------------------------------
//Fine Grain Process Control Methods:
//
//status():
//
//It will return the status of the handle regarding which mode it is in.
//There was already 5 pre defined modes like:
//{FINISHED,RUNNING,WAITING,KILLED,SUSPENDED}
//--------------------------------------------------------------------------------------------

module fine_status;
  process p1,p2;
  initial begin:main_begin
    //-------------------------------------------------------
    //We will be checking whether in which mode the p1 and p2
    //will be for the given value of time.
    //
    //-------------------------------------------------------
    
    $display("[%0t] Seeking status:",$time);
    
    fork:fork1

      begin:fork1_begin1
        
        p1 = process :: self();
        #1 $display("[%0t] I'm in Amalfi Coast, Italy",$time);
        #3 $display("[%0t] p1_1: %s",$time,p1.status());
      
      end:fork1_begin1
      
      #1 $display("[%0t] p1_2: %s",$time,p1.status());
    
    join:fork1
    
    #1 $display("[%0t] p1_3: %s",$time,p1.status());
    
    fork:fork2
      
      begin:fork2_begin1 
        
        p2 = process :: self();
        #8 $display("[%0t] Waiting for bus",$time);
        $display("[%0t] p2_1: %s",$time,p2.status());
      
      end:fork2_begin1
      
      #1 $display("[%0t] p2_2: %s",$time,p2.status());
    
    join:fork2
    
    #1 $display("[%0t] p2_3: %s",$time,p2.status());
  
  end:main_begin

endmodule:fine_status
