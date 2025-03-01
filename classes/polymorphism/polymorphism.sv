//--------------------------------------------------------------------------------------------
//Polymorphism:
//Polymorphism allows to access the sub-class methods using super-class objects. 
//Any subclass object can be assigned to super-class object. In polymorphism, same 
//handle (or) metthods take different forms.
//--------------------------------------------------------------------------------------------
// creating class
class parent;
  // class properties
  int a;
  int b;

  //declaring class virtual method
  virtual function void display();
    //assigning value for a and b
    a = 1;
    b = 2;
    $display("This is parent class");
    $display("a = %0d, b = %0d\n",a,b);
  endfunction:display
endclass:parent

// inheriting parent class
class child1 extends parent;
  // child1 properties
  int c;
  int d;
  int e;
  //declaring child1 methods
  function void display();
    //assigning value for a, b and e
    a = 3;
    b = 4;
    e = a+b;
    $display("\nThis is child class");
    $display("a = %0d, b = %0d, e = %0d",a,b,e);
  endfunction:display
endclass:child1

//inheriting parent class
class child2 extends parent;
  //child2 properties
  int f;
  //declaring child2 method
  function void display();
    //assigning value for f.
    f= a*b;
    $display("f = %0d",f);
  endfunction:display
endclass:child2

module polymorphism();
  //declaring handle of parent and child class
  parent p1[1:0];
  child1 c;
  child2 c2;

  initial begin
    //creating object of child1
    c = new();
    //assigning child class handle into parent class handle of p[0]
    p1[0] = c;
    //creating object for parent class p[1]
    p1[1] = new();
    //accessing child class method using parent class handle
    p1[0].display();
    p1[1].display();
  end

endmodule:polymorphism
