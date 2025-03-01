//--------------------------------------------------------------------------------------------
//Abstract/Virtual class:
//
//SystemVerilog class declared with the keyword virtual is referred to as an abstract class.
//An abstract class sets out the prototype for the sub-classes.
//An abstract class cannot be instantiated, it can only be derived.
//An abstract class can contain methods for which there are only a prototype and no 
//implementation, just a method declaration.
//--------------------------------------------------------------------------------------------
//creating a class using virtual class
virtual class A;
  //declaring properties and method
  int a = 5;
  function void disp();
    $display("1.Value of a = %0d",a);
  endfunction:disp
   
endclass:A

//creating class extends from virtual class A
class B extends A;
  //declaring properties and method
  int a = 6;
  function void display();
    $display("2.Value of a = %0d",a);
  endfunction:display
                          
endclass:B
                                                   
module abstract_class();
  //declaring handle of class B
  B b1;
  initial begin
    //creating object of b1
    b1 = new();
    //assiging value for a using class B handle
    b1.a = 10;
    //calling virtual class method because 
    //An abstract class cannot be instantiated, it can only be derived
    //and using derived class handle we can access virtual class method
    b1.disp();
    //calling child class method
    b1.display();                                                                                      
  end

endmodule:abstract_class
