//--------------------------------------------------------------------------------------------
//with help of the scope resolution operator we can access the static properties of class or
//package inside the module
//--------------------------------------------------------------------------------------------
class my_class;
  int a;
  // declare variable using static storage
  static int b;

  //declare function and printing a and b value
  function void display();   
    $display("value of a=%0d",a);
    $display("value of b=%0d",b);
  endfunction

endclass:my_class
 
module static_exm;
  initial begin: BEGIN_I
    //declare class handle
    my_class A1;
    //create object for A1
    A1 =new();
    //assigning value to class variable a
    A1.a=10;
    $display("Using the scope resolution operator we can access the static properties");
    //we can access static variable using scope resolution operator
    //Here using the scope resolution operator we declare the value of static properties b inside the module
    my_class::b=20; 
   
    //calling display function
    A1.display();
  end: BEGIN_I

endmodule:static_exm
