//--------------------------------------------------------------------------------------------
//Fine Grain Process Control Methods:
//status():
//It will return the status of the handle regarding which mode it is in.
//There was already 5 pre defined modes like:
//{FINISHED,RUNNING,WAITING,KILLED,SUSPENDED}
//--------------------------------------------------------------------------------------------
module fine_status;
  //declare events
  event e1,e2,e3,e4;
  //declare processes
  process p1,p2,p3;
  initial begin:BEGIN_B1
    //-------------------------------------------------------
    //We will be checking whether in which mode the p1 and p2
    //will be for the given value of time.
    //-------------------------------------------------------
    $display("[%0t] Seeking status:",$time);
    
    fork:FORK_F1
      
      begin:BEGIN_B2
        //created process p1
        p1 = process :: self();
        #1;
        $display("[%0t] I am in process p1",$time);
        $display("[%0t] Initial status of p1: %s",$time,p1.status());
        #1;
        $display("[%0t] Still working in p1",$time);
        //trigger event e1 and e2
        ->e1;
        ->e2;
      end:BEGIN_B2

      begin:BEGIN_B3
        //created process p2
        p2 = process :: self();
        //waiting trigger event e2
        wait(e2.triggered);
        #1;
        $display("[%0t] I am in process p2",$time);
        $display("[%0t] Initial status of p2: %s",$time,p2.status());
        $display("[%0t] Still working in p2",$time);
        //trigger event e3
        ->e3;
      end:BEGIN_B3

      begin:BEGIN_B4
        //waiting trigger event e1
        wait(e1.triggered);
        $display("[%0t] Final status of p1: %s",$time,p1.status());
      end:BEGIN_B4

      begin:BEGIN_B5
        //waiting trigger event e3
        wait(e3.triggered);
        $display("[%0t] Final status of p2: %s",$time,p2.status());
      end:BEGIN_B5

      fork:FORK_F2
        //created process p3
        p3 = process :: self();
        #1;
        $display("[%0t] I am in process p3",$time);
        #1;
        $display("[%0t] status of p3: %s",$time,p3.status());
        #1;
        //trigger event e4
        ->e4;
      join:FORK_F2

    join_any:FORK_F1

    //waiting trigger event e4
    wait(e4.triggered);
    #1 $display("[%0t] Final status of p3: %s",$time,p3.status());
  end:BEGIN_B1

endmodule:fine_status
