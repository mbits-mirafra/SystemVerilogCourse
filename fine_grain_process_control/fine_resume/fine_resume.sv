//--------------------------------------------------------------------------------------------
//Fine Grain Process Control Methods
//resume():
//This command resumes the thread from suspended state.
//--------------------------------------------------------------------------------------------
module fine_resume;
  //declare process
  process p1,p2;
  //declare event
  event e1,e2,e3;

  initial begin:BEGIN_B1 //Procedural block
    //-------------------------------------------------------
    //We are resuming p1 for the rest of the code after it
    //getting suspended.
    //-------------------------------------------------------
    $display("[%0t] Seeking status:",$time);
             
    fork:FORK_F1
    
      begin:BEGIN_B2
        //creating process ID for p1
        p1 = process :: self();
        #1;
        $display("[%0t] I am in process p1",$time);
        $display("[%0t] Initial status of p1: %s",$time,p1.status());
        //trigger event e1
        ->e1;

        if(p1.status() != process :: FINISHED)

          begin:BEGIN_B3
            $display("[%0t] Status of p1 before suspending: %s",$time,p1.status());
            //p1 is suspend
            p1.suspend(); 
            $display("[%0t] Status of p2 in p1 block: %s",$time,p2.status());
          end:BEGIN_B3
      
      end:BEGIN_B2
                           
      begin:BEGIN_B4
        //witing to trigger even e2
        wait(e2.triggered);
        $display("[%0t] Status of p1 before resuming: %s",$time,p1.status());
        //resuming p1
        p1.resume();
        #1;
        $display("[%0t] Status of p1 after resuming: %s",$time,p1.status());
        //trigger event e3
        ->e3;
      end:BEGIN_B4

      begin:BEGIN_B6
        //creating process ID for p2
        p2 = process :: self();
        #1;
        $display("[%0t] I am in process p2",$time);
        $display("[%0t] Initial status of p2: %s",$time,p2.status());
   
        //if p1 processet suspended the triggering event e2
        if(p1.status() == process :: SUSPENDED)
          #1 ->e2;
      end:BEGIN_B6
      
      begin:BEGIN_B7
        //waiting trigger to event e3
        wait(e3.triggered);
        #1;
        $display("[%0t] Final status of p1: %s",$time,p1.status());
        $display("[%0t] Final status of p2: %s",$time,p2.status());
      end:BEGIN_B7

    join:FORK_F1

  end:BEGIN_B1

endmodule:fine_resume

                                                    
