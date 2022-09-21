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
  endfunction
  //declaring static method
  static function void disp();
  $display("team=%0d",team);
endfunction
endclass
module static_method;
Mirafra m[3];//declaring array
initial  begin
  foreach(m[i])begin
    m[i]=new;
  end
  $display("contents of team");
  m[2].disp();
end
endmodule

