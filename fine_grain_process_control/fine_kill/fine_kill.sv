//--------------------------------------------------------------------------------------------
//
//Fine Grain Process Control Methods:
//
//kill():
//
//This command is used to kill a process whenever you want.
//--------------------------------------------------------------------------------------------

module fine_kill;
  process p1,p2;
  initial begin:main_begin
  //-------------------------------------------------------
  //Here we are trying to kill process p1 
  //if it was not finished.
  //
  //-------------------------------------------------------
    $display("[%0t] Seeking status:",$time);

    fork:fork1

      begin:fork1_begin1

        p1 = process :: self();
        #1 $display("[%0t] I'm in Amalfi Coast, Italy",$time);
        #3 $display("[%0t] p1_1: %s",$time,p1.status());
        
        if(p1.status() != process :: FINISHED )
          p1.kill();
      
      end:fork1_begin1
      
      #5 $display("[%0t] p1_2: %s",$time,p1.status());
    
    join:fork1

  end:main_begin

endmodule:fine_kill
