//--------------------------------------------------------------------------------------------
//Inheritance:
//
//Inheritance is the mechanism which allows child class to inherit properties of parent
//class.
//--------------------------------------------------------------------------------------------

class A; // creating a class
  int a=5;   //class property
  function void disp(); // class method
    $display("1.Value of a = %0d",a);
  endfunction:disp

  endclass:A

//-------------------------------------------------------
//'extends' is the keyword which helps child class B
//to inherit the properties of base class A.
//
//-------------------------------------------------------
class B extends A; // inheritance

  int a = 6; //class B properties
  
  function void display(); //child class method
    $display("2.Value of a = %0d",a);
  endfunction:display

endclass:B

module inh_sam();
   B b1; // creating handle for class B
   initial begin
    b1 = new;    //creating an object
    b1.a = 10;  // accessing the class property
    b1.disp(); //accessing the class method of parent class 
    b1.display(); //accessing the class method of child class
    
  end
endmodule:inh_sam

  





