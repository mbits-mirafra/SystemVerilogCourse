//-------------------------------------------------------
//Parameterized class:
//Parameterized classes are useful when the same class needs
//to be instantiated differently.
//for declaring parameterized class we use 'parameter'
//keyword.
//-------------------------------------------------------
class data #(parameter a,type team=string);//parameter declaration
  bit [a-1:0]d;
  team c;
  
  function new();
    d=20;
    c="Mirafra";
  endfunction

  function void disp();
    $display("d=%0d,c=%0s",d,c);
  endfunction

endclass:data
data#(4) p1;

module test;
  
  initial begin:BEGIN_I
    p1=new();
    $display("");
    $display("contents of p1");
    p1.disp();
    $display("");
  end:BEGIN_I

endmodule:test
