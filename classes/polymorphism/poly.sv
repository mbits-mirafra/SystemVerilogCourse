//--------------------------------------------------------------------------------------------
//Polymorphism:
//
//Polymorphism allows to access the sub-class methods using super-class objects. 
//Any subclass object can be assigned to super-class object. In polymorphism, same 
//handle (or) metthods take different forms.
//--------------------------------------------------------------------------------------------
class parent; // creating class
  int a; // class properties
  int b;// class properties
  virtual function void display();// class methods

     a = 1;
     b = 2;
     $display("This is parent class");
     $display("a = %0d, b= %0d",a,b);
  endfunction:display
endclass:parent

class child1 extends parent;// inheriting paren class
  int c,d,e; // child1 properties
  function void display();// child1 methods
    a = 3;
    b = 4;
    e = a+b;
    $display("This is child class");
    $display("a = %0d, b = %0d,e = %0d",a,b,e);
  endfunction:display
endclass:child1

class child2 extends parent;// inheriting paren class
  int f;// child1 properties
  function void display();// child2 methods
    f= a*b;
    $display("f = %0d",f);
    endfunction:display
  endclass:child2

module poly_ex();

  parent p1[1:0]; //creating handle for parent class
  child1 c;
  child2 c2;

  initial begin
    c = new();
    p1[0] = c; // assigning child class handle into parent class handle
    p1[1] = new(); // creating object
    
    p1[0].display(); //accessing child class method using parent class handle
    p1[1].display();

  end

endmodule:poly_ex
