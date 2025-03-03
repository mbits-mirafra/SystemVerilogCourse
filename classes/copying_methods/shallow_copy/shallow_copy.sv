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
    $display("\t c=%0s,\t d=%0d",c,d);
  endfunction:display

endclass:Mirafra

module shallow;
  //declare 2 handle using mirafra class
  Mirafra p1;
  Mirafra p2;

  initial begin:BEGIN_I
    // Create an object of class Mirafra using p1
    p1 =new();
    $display("");
    $display("contents of p1 befor chnages");
    //calling display using p1
    p1.display();
    // Create a new object p2 and initialize it with p1
    p2 =new p1;
    $display("contents of p2 before changes");
    //calling display using p2
    p2.display();
    // Modify values using p2 handle
    p2.c="place";
    //changes mad by p2 not reflect on p1
    $display("contents of p1 after changes");
    p1.display();
    $display("contents of p2 after changes");
    p2.display();
    $display("");
  end:BEGIN_I

endmodule:shallow


