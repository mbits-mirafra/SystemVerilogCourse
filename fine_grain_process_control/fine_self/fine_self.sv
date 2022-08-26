//--------------------------------------------------------------------------------------------
//Fine Grain Process Control Methods:
//
// self():
//
// It will return the handle of the process.That means it will create an object for 
// the pre-define class called 'process'.
//
//--------------------------------------------------------------------------------------------

module fine_self; // Defining a module
  process p1; 
  initial begin:main_begin // Procedural Block
    //------------------------------------------------------
    //creating a variable p1 for predefined class 'process'.
    //Since we have not created object p1, so we are checking 
    //it with null.
    //Later after delay 10 we are creating an object inside 
    //self().
    //-------------------------------------------------------
    
    if(p1 == null)
      $display("[%0t] Not created",$time);
    else
      $display("[%0t] Created",$time);

    #10 p1 = process :: self();
    
    if(p1 == null)
      $display("[%0t] Not created",$time);
    else
      $display("[%0t] Created",$time);
  
  end:main_begin

endmodule:fine_self
