//--------------------------------------------------------------------------------------------
//Inheritance:
//Inheritance is the mechanism which allows child class to inherit properties of parent
//class.
//--------------------------------------------------------------------------------------------
// creating a class
class A; 
  //declaring class property
  int a = 5; 
  //declaring class methos
  function void disp(); 
    $display("1.Value of a = %0d",a);
  endfunction:disp

endclass: A

//-------------------------------------------------------
//'extends' is the keyword which helps child class B
//to inherit the properties of base class A.
//-------------------------------------------------------
class B extends A;
  //declaring class B properties
  //if will not declare a here then it will take base class a.
  int a = 6; 
  //declaring child class method
  function void display();
    $display("2.Value of a = %0d",a);
  endfunction:display

endclass:B

module inheritance();
  // creating handle for class B
  B b1; 
  initial begin
    //creating an object b1
    b1 = new();
    // accessing the class property
    b1.a = 10;
    //accessing the class method of parent class
    b1.disp();  
    //accessing the class method of child class
    b1.display(); 
  end
endmodule:inheritance
