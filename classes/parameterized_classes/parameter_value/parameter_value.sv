//-------------------------------------------------------
//Parameterized class by value:
//here we declare the value using the 'parameter' keyword.
//It has size as a parameter that can be changed during
//instantiation.
//-------------------------------------------------------

//----class 1----
class mirafra #(parameter branch,employes);
  bit [branch-1:0]b1;
  bit [employes-1:0]b2;
  
  function new();
    b1=13;
    b2=25;
  endfunction:new

endclass:mirafra

module value;
  mirafra#(5,7) m;
  

  initial begin:BEGIN_I
    m=new();
    $display("contents of m before value changes");
    m.disp();
  end:BEGIN_I

endmodule:value
