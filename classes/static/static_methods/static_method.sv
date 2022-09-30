//-------------------------------------------------------
//static methods:
//Here we declare functions/tasks are declared as static in 
//static methods.
//Using 'static' keyword
//-------------------------------------------------------

class Mirafra;
  static int  team ;
  
  function new();
    //incrementing team
    team ++;
  endfunction:new
  
  //declaring static method
  static function void disp();
    $display("\t team=%0d",team);
  endfunction:disp

endclass:Mirafra

module static_method;
  Mirafra m[3];//declaring array

  initial begin:BEGIN_I
    $display("");
    foreach(m[i])begin:BEGIN_LOOP
      m[i]=new;
    end:BEGIN_LOOP

    $display("\t contents of team");
    m[2].disp();
    $display("");
  end:BEGIN_I

endmodule:static_method

