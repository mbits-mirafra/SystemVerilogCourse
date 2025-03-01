//-------------------------------------------------------
//Parameterized class:
//Parameterized classes are useful when the same class needs
//to be instantiated differently.
//for declaring parameterized class we use 'parameter'
//keyword.
//-------------------------------------------------------
//declared class using parameter and using datatype parameter
class data #(parameter a,type team=string);//parameter declaration
  //declare size of d variable using parameter a
  bit [a-1:0]d;
  //declare variable c using team type data type
  team c;
  
  function new();
    d=20;
    c="Mirafra";
  endfunction
  //printing c and d
  function void disp();
    $display("d=%0d,c=%0s",d,c);
  endfunction

endclass:data

module value;
  //pasing parameter value and creating handle
  data#(4) p1;
  
  initial begin:BEGIN_I
    p1=new();
    $display("");
    $display("contents of p1");
    //calling class display function
    p1.disp();
    $display("");
  end:BEGIN_I

endmodule:value
