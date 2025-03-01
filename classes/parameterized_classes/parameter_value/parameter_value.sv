//-------------------------------------------------------
//Parameterized class by value:
//here we declare the value using the 'parameter' keyword.
//It has size as a parameter that can be changed during
//instantiation.
//-------------------------------------------------------
//Declared class with parameter
class mirafra #(parameter branch,employes);
  //using parameter value declare size of variable
  bit [branch-1:0]b1;
  bit [employes-1:0]b2;
 
  //declare class construct and assigning value in b1 and b2
  function new();
    b1=13;
    b2=9;
  endfunction
  //printing b1 and b2
  function void disp();
    $display("b1=%0d,b2=%0d",b1,b2);
  endfunction

endclass:mirafra

module value;
  //pasing value for class parameter
  mirafra#(3,2) m;

  initial begin:BEGIN_I
    //created memory for class handle
    m=new();
    $display("");
    $display("contents of m ");
    //calling class disp function
    m.disp();
    $display("");
  end:BEGIN_I

endmodule:value
