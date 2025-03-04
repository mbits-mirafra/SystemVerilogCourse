//declare hyd class
class hyd;
  //declare variable using string and integer
  string a;
  int d=8;
  //declare display function
  function void display();
    //printing a and d
    $display("a = %0s",a);
    $display("d=%0d",d);
  endfunction
endclass

//declare branch class extends from parent hyd class
class branch extends hyd;
  //declare variable using string
  string b;
  //declare display function
  function void display();
    //using super keyword calling parent class desplay
    super.display();
    //Printing b
    $display("b = %0s",b);
  endfunction
endclass

module casting;
  //declared hyd class handle p
  hyd p;
  //declared branch class handle c and c1
  branch  c;
  branch c1;

  initial begin: BEGIN_I
    //declare object of handle c
    c = new();
    //using handle c assigning value in a and b
    //because child class handle so we can access b using handle c
    c.a = "charminar";
    c.b = "cafe";
    // Assign c to p - Both now refer to the same object in memory
    p = c;
    //dynamic casting try to cast Parent p to Child c1
    $cast(c1,p);
    $display("contents of c1");
    //Using handle c1 calling child class function
    c1.display();
  end: BEGIN_I

endmodule:casting
