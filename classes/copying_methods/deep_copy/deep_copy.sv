//-------------------------------------------------------
//Deep copy:
//In deep copy we have two different memory locations and 
//we use 'copy' in deep copy
//-------------------------------------------------------
// Class definition for branches
class branches;
  //created variable usingn string and integer
  string c;
  int d;

  // Constructor to initialize class variables
  function new();
    c = "Banglore"; // Default string name
    d = 1;          // Default value to d
  endfunction: new

  // Function to display c and d variable details
  function void disp();
    $display("\t c=%0s,\t d=%0d", c, d); 
  endfunction: disp

  // Function to perform deep copy
  function void deep(branches copy);
    //copy the c and d
    this.c = copy.c;
    this.d = copy.d; 
  endfunction: deep

endclass: branches

module deep;
  // Declare object handle p1 and p2
  branches p1;
  branches p2;

  initial begin: BEGIN_I
    // Create an object of class branches p1 and p2
    p1 = new(); 
    p2 = new(); 

    p2.deep(p1); // Perform deep copy: Copy values from p1 to p2

    // Display initial values of p1 and p2
    $display("");
    $display("Contents of branch p1 before changes");
    p1.disp();
    $display("Contents of branch p2 before changes");
    p2.disp();

    // Modify values in p1 and p2 separately
    p1.c = "Manipal";    
    p2.c = "Hyderabad"; 

    // Display values after modifications
    $display("Contents of branches p1 after changes");
    p1.disp();
    $display("Contents of branches p2 after changes");
    p2.disp();
    $display("");
  end: BEGIN_I

endmodule: deep

