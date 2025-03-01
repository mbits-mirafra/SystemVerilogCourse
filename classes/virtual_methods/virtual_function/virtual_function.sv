// Define a class named 'packet'
class packet;
  //declare variable a and b
  string a;
  int b;

  //class construct and giving default values to a and b
  function new();
    a="Team";
    b=4;
  endfunction:new

  // Virtual function for displaying class members a and b
  virtual function void display();
    $display("a=%0s",a);
    $display("b=%0d",b);
  endfunction:display

endclass:packet

// Define a class named pack extends from packet class
class pack extends packet;
  //declare variable c and d
  string c;
  int d;

  //class construct and giving default values to c and d
  function new();
    c="BJT";
    d=8;
  endfunction:new

  //function for displaying class members c and d
  function void display();
    $display("c = %0s",c);
    $display("d = %0d",d);
  endfunction:display

endclass:pack

// Define a class named pack1 extends from packet class
class pack1 extends packet;
  //declare variable e 
  string e;

  //class construct and giving default value to e
  function new();
    e="Manipal";
  endfunction:new
  
  //function for displaying class member e
  function void display();
    $display("e = %0s",e);
  endfunction:display

endclass:pack1

module virtual_function;
  //created handles
  packet pp0,pp1;
  pack p2;
  pack1 p3;

  initial begin:BEGIN_I
    //creating memory for handle p2 and p3
    p2=new();
    p3=new();
    //class assignment
    pp0=p2;
    //shallow copy
    pp1=new p3;
    //calling display for pp0 and pp1 it will print copied values
    $display("contents of pp0");
    pp0.display();
    $display("contents of pp1");
    pp1.display();
  end:BEGIN_I

endmodule:virtual_function
