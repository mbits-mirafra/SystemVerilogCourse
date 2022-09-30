//-------------------------------------------------------
//Static properties:
//The class can have multiple instances, each instance of 
//the class will be having its own copy of variables.
//Using 'static'keyword we define static properties below.
//-------------------------------------------------------

//---class 1---
class Mirafra;
  byte teams;
  //declare the static property
  static byte BJT;
  
  function new();
    //incrementing the BJT
    BJT++;
    //Assigning static byte to byte
    teams=BJT;
  endfunction:new
  
  function void disp();
    $display("teams=%0d",teams);
  endfunction:disp

endclass:Mirafra

module static_properties;
  Mirafra m[4];//declared array of m here

  initial begin:BEGIN_I
  
    foreach(m[i]) begin:BEGIN_LOOP
      m[i] = new();
      $display("contents of teams");
      m[i].disp();
    end:BEGIN_LOOP

  end:BEGIN_I

endmodule:static_properties
