//--------------------------------------------------------------------------------------------
//Fine Grain Process Control Methods
//
//suspend():
//
// This command will suspends the thread for some indefinite time.
//--------------------------------------------------------------------------------------------

module fine_suspend;
  process p1,p2;
  event e1,e2;
  
  initial begin:BEGIN_B1 //Procedural block
    //-------------------------------------------------------
    //We are suspending p1 for the rest of the code once it
    //satisfies if condition.
    //-------------------------------------------------------

    $display("[%0t] Seeking status:",$time);
                 
    fork:FORK_F1
                   
      begin:BEGIN_B2
        p1 = process :: self();
        #1 $display("[%0t] I am in process p1",$time);
        $display("[%0t] Initial status of p1: %s",$time,p1.status());
        ->e1;

        if(p1.status() != process :: FINISHED)
        
        begin:BEGIN_B3
          #1 $display("[%0t] Status of p1 before suspending: %s",$time,p1.status());
          p1.suspend();
          $display("[%0t] Status of p2 in p1 block: %s",$time,p2.status());
        end:BEGIN_B3
      
      end:BEGIN_B2 

      begin:BEGIN_B4
        wait(e1.triggered);
        p2 = process :: self();

        #1 $display("[%0t] I am in process p2",$time);
        $display("[%0t] Initial status of p2: %s",$time,p2.status());
        #1 $display("[%0t] status of p1 after suspended: %s",$time,p1.status());
        ->e2;
      end:BEGIN_B4

      begin:BEGIN_B5
        wait(e2.triggered);
        $display("[%0t] Final status of p2: %s",$time,p2.status());
      end:BEGIN_B5

    join:FORK_F1

  end:BEGIN_B1

endmodule:fine_suspend

