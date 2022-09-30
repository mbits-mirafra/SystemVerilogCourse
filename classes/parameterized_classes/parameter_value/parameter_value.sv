//-------------------------------------------------------
//Parameterized class by value:
//here we declare the value using the 'parameter' keyword.
//It has size as a parameter that can be changed during
//instantiation.
//-------------------------------------------------------

//----class 1----
class mirafra #(parameter int branch=32,employes=32);
  bit [branch-1:0]b1;
  bit [employes-1:0]b2;
  
  function new();
    b1=13;
    b2=25;
  endfunction:new

endclass:mirafra

//---class 2----
class manipal;
  string x="team3";
  int y=4;
  
  mirafra m=new();//class handle
  
  function void disp();
    $display("b1=%0d \t b2=%0d \t x=%0d \t y=%0d",m.b1,m.b2,x,y);
  endfunction:disp

endclass:manipal

module value;
  manipal p1;
  manipal p2;

  initial begin:BEGIN_I
    p1=new();
    $display("contents of p1 before value changes");
    p1.disp();
    p2=p1;//classs-assignment
    $display("contents of p2 before value changes");
    p2.disp();
    p1.m.b2=4;
    p2.x="BJT";
    p2.y=8;
    $display("contents of p1 after value changes");
    p1.disp();
    $display("contents of p2 after value changes");
    p2.disp();
  end:BEGIN_I

endmodule:value
