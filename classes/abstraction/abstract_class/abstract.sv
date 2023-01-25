//--------------------------------------------------------------------------------------------
//
//Abstract/Virtual class:
//
//SystemVerilog class declared with the keyword virtual is referred to as an abstract class.
//An abstract class sets out the prototype for the sub-classes.
//An abstract class cannot be instantiated, it can only be derived.
//An abstract class can contain methods for which there are only a prototype and no 
//implementation, just a method declaration.
//--------------------------------------------------------------------------------------------

virtual class A; //creating a class using virtual class
  int a = 5;
  function void disp();
    $display("1.Value of a = %0d",a);
  endfunction:disp
   
endclass:A

class B extends A;
  int a = 6;
  function void display();
    $display("2.Value of a = %0d",a);
  endfunction:display
                          
endclass:B
                                                   
module abstract_ex();
 
  B b1;
  initial begin
    b1 = new;
    b1.a = 10;
    b1.disp();
    b1.display();                                                                                      
  end

endmodule:abstract_ex
