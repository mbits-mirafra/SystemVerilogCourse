//--------------------------------------------------------------------------------------------
//
//Fine Grain Process Control Methods:
//
//kill():
//
//This command is used to kill a process whenever you want.
//--------------------------------------------------------------------------------------------

module fine_kill;
  event e1;
  process p1;
  initial begin:BEGIN_B1
  //-------------------------------------------------------
  //Here we are trying to kill process p1 
  //if it was not finished
  //-------------------------------------------------------

    $display("[%0t] Seeking status:",$time);

    fork:FORK_F1

      begin:BEGIN_B2
        p1 = process :: self();
        #1 $display("[%0t] I am in process p1",$time);
        $display("[%0t] Initial status check of p1: %s",$time,p1.status); 
        ->e1;
        
        if(p1.status() != process :: FINISHED)
          p1.kill();
          $display("hi i am working");
          $display("what about you?");
      end:BEGIN_B2
      
      begin
        wait(e1.triggered);
        #1 $display("[%0t] Status of p1 before killing: %s",$time,p1.status());
      end

    join:FORK_F1
  
  end:BEGIN_B1

endmodule:fine_kill
