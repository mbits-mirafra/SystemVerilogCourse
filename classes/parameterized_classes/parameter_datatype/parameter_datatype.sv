//-------------------------------------------------------
//Parameterized class:
//Parameterized classes are useful when the same class needs
//to be instantiated differently.
//for declaring parameterized class we use 'parameter'
//keyword.
//-------------------------------------------------------

//----class 1----
class data #(parameter int a=128,type team=string);//parameter declaration
  bit [a-1:0]d;
  team c;
  
  function new();
    d=8;
    c="Mirafra";
  endfunction:new

endclass:data

//---class 2----
class pack;
  int y;
  string x;
  data dt;
  
  function new();
    x="teams";
    y=25;
    dt=new();
  endfunction:new
  
  function void display();
    $display("c = %0d \t d = %0d \t x = %0d \t y=%0d",dt.c,dt.d,x,y);
  endfunction:display

endclass:pack

module test;
  pack t1,t2;

  initial begin:BEGIN_I
    t2=new();
    $display("contents of t2 before value changes");
    t2.display();
    t2.dt.d=3;
    t2.dt.c="Teams";
    t1=new t2;//shallow copy
    $display("contents of t1 before value changes");
    t1.display();
    t1.y=8;
    t2.x="BJT";
    $display("contents of t1 after value changes");
    t1.display();
    $display("contents of t2 after value changes");
    t2.display();
  end:BEGIN_I

endmodule:test
