// Class definition for Mirafra
class Mirafra;
  //declare variable using string and integer
  string c;
  int d; 
  // Constructor to initialize class variables
  function new();
    //Assign default value to c and d
    c="team";
    d=4;
  endfunction:new
  
  //printing value c and d
  function void display();
    $display("\t c=%0s,d=%0d",c,d);
  endfunction:display

endclass:Mirafra

module assignment;
  //declare 2 handle using mirafra class
  Mirafra p1;
  Mirafra p2;

  initial begin:BEGIN_I
    // Create an object of class Mirafra using p1
    p1=new();
    $display("");
    $display("contents of p1 before changes");
    //calling display using p1
    p1.display();
    // Assign p1 to p2 - Both now refer to the same object in memory
    p2=p1;
    $display("contents of p2 before changes");
    //calling display using p2
    p2.display();
    // Modify values using p2 handle
    p2.c="BJT";
    p2.d=8;
    //p1 and p2 refer to the same object, changes reflect in both
    $display("contents of p1 after changes");
    p1.display();
    $display("contents of p2 after changes");
    p2.display();
    $display("");
  end:BEGIN_I

endmodule:assignment
