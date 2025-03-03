// Base class definition
class super_parent;
  int a; 
  // Constructor to initialize 'a'
  function new(int x);
    a = x;
  endfunction
endclass: super_parent

// Derived class 'parent' extending 'super_parent'
class parent extends super_parent;
  int b; 
  // Constructor to initialize 'b' and call the base class constructor
  function new(int y);
    // Calls super_parent's constructor with a value of 3
    super.new(3);
    b = y;
  endfunction
endclass: parent

// derived class 'child' extending 'parent'
class child extends parent;
  int c; 
  // Constructor for 'child'
  function new();
    //Calling parent class constructor with a value of 2
    super.new(2); 
    c = 1;
  endfunction

  // Display function to print values of a, b, and c
  function void display();
    $display("a = %0d, b = %0d, c = %0d", a, b, c);
  endfunction
endclass: child

// Module to test the class instantiation and function call
module chain_constructs;
  // creating handle of child class
  child c = new(); 

  initial begin: MAIN
    // Calling child class display function to print values
    c.display();
  end: MAIN

endmodule: chain_constructs
