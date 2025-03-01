//-------------------------------------------------------
//static methods:
//Here we declare functions/tasks are declared as static in 
//static methods.
//Using 'static' keyword
//-------------------------------------------------------
class Mirafra;
  static int team ;
  
  function new();
    //incrementing team
    team ++;
  endfunction:new
  
  //declaring static method it can access only static properties of a class
  static function void disp();
    $display("\t team=%0d",team);
  endfunction:disp

endclass:Mirafra

module static_method;
  Mirafra m[3];//declaring handle of class array type

  initial begin:BEGIN_I
    $display("");
    //creating memory for each handle
    foreach(m[i])begin:BEGIN_LOOP
      m[i]=new();
    end:BEGIN_LOOP

    $display("\t contents of team");
    //calling display using m[2] handle and it will print 3
    //because static variable and while creating memory increment
    m[2].disp();
    $display("");
  end:BEGIN_I

endmodule:static_method

