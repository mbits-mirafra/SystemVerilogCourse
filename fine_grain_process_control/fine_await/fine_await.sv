//--------------------------------------------------------------------------------------------
//
//Fine Grain Process Control Methods:
//
//awaits():
//
//This command is used to wait for other process to complete first then the current process 
//will be done.
//--------------------------------------------------------------------------------------------

module fine_await;
  process p1,p2;
  event e1,e2;
  
  initial begin:BEGIN_B1 //Procedural block
    //-------------------------------------------------------
    //We are waiting for p2 to complete in order to complete
    //p1.
    //-------------------------------------------------------
    $display("[%0t] Seeking status:",$time);

    fork:FORK_F1
    
      begin:BEGIN_B2
        p1 = process :: self();
        #1 $display("[%0t] I am in process p1",$time);
        $display("[%0t] Initial status of p1: %s",$time,p1.status());
        $display("[%0t] Status of p1 before await: %s",$time,p1.status());
        
        if(p1.status() != process :: FINISHED)
          p2.await();
        
      end:BEGIN_B2
      
      #2 $display("[%0t] Status of p1 after await: %s",$time,p1.status());
    
      begin:BEGIN_B4 
        p2 = process :: self();
        #1 $display("[%0t] I am in process p2",$time);
        $display("[%0t] Initial status of p2: %s",$time,p2.status());
        #2 ->e2;
      end:BEGIN_B4
     
      begin:BEGIN_B5
        wait(e2.triggered);
        $display("[%0t] Final status of p2: %s",$time,p2.status());
        ->e1;
      end:BEGIN_B5

      begin:BEGIN_B6
        wait(e1.triggered);
        $display("[%0t] Final status of p1: %s",$time,p1.status());
      end:BEGIN_B6
    join_any:FORK_F1

  end:BEGIN_B1

endmodule:fine_await

