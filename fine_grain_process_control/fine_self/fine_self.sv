//--------------------------------------------------------------------------------------------
//Fine Grain Process Control Methods:
// self():
// It will return the handle of the process.That means it will create an object for 
// the pre-define class called 'process'.
//--------------------------------------------------------------------------------------------
module fine_self; // Defining a module
  //declare events
  event e1,e2,e3,e4;
  //declare process
  process p1; 
  
  initial begin:BEGIN_B1 // Procedural Block
    //------------------------------------------------------
    //creating a variable p1 for predefined class 'process'.
    //Since we have not created object p1, so we are checking 
    //it with null.
    //Later after delay 10 we are creating an object inside 
    //self().
    //-------------------------------------------------------
    $display("[%0t] We are getting into fork-join block",$time);

    fork:FORK_F1
      $display("[%0t] Entered into fork-join and started first check for the process",$time);
      #1;
      //trigger event e1
      ->e1;
      
      begin:BEGIN_B2
        //waiting trigger t1
        wait(e1.triggered);
        //checking p1 created or null
        if(p1 == null)
          $display("[%0t] Not created",$time);
        else
          $display("[%0t] Created",$time);
        //trigger event e3
        ->e3;
        #1;
        //trigger event e2
        ->e2;
      end:BEGIN_B2
      
      #2;
      //creating process p1
      p1 = process :: self();

      begin:BEGIN_B3
        //waiting trigger event e2
        wait(e2.triggered);
        $display("[%0t] Started second check for the process",$time);
        //checking p1 created or null
        if(p1 == null)
          $display("[%0t] Not created",$time);
        else
          $display("[%0t] Created",$time);
        //trigger event e4
        ->e4;
      end:BEGIN_B3
      
      fork:FORK_F2

        begin:BEGIN_B4
          //waiting trigger event e3
          wait(e3.triggered);
          $display("[%0t] first check for the process done",$time);
        end:BEGIN_B4
      
        begin:BEGIN_B5
          //waiting trigger event e4
          wait(e4.triggered);
          $display("[%0t] Second check for the process done",$time);
        end:BEGIN_B5
      
      join:FORK_F2
    join:FORK_F1
  end:BEGIN_B1

endmodule:fine_self
