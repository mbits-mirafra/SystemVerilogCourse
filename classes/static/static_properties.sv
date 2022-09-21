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
  endfunction
  function void disp();
    $display("teams=%0d",teams);
  endfunction
endclass

module static_properties;
Mirafra m[4];//declared array of m here

initial begin
  foreach(m[i]) begin
    m[i] = new();
    $display("contents of teams");
    m[i].disp();
  end

end
endmodule


