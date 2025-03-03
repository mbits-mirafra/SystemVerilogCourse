//-------------------------------------------------------
//virtual task:
//Task declared with a virtual keyword before the task keyword
//is referred to as virtual task
//-------------------------------------------------------
//---class 1------
class packet;
  //declared variable a and b
  string a;
  int b;

  // Virtual task for displaying and modifying class members
  virtual task  display();
    //assigning values in a and b
    a="Team";
    b=4;
    //printing values in a and b
    $display("a=%0s",a);
    $display("b=%0d",b);
  endtask 

endclass//class 1

//-----class 2-------
class pack extends packet;
  //declared variable c and d
  string c;
  int d;

  //declared task for displaying and modifying class members
  task display();
    //assigning values in c and d
    c="BJT";
    d=8;
    //printing values in c and d
    $display("c=%0s",c);
    $display("d=%0d",d);
  endtask

endclass//class 2

module virtual_task;
  //declared handle of class packet and pack
  packet p1;
  pack p2;

  initial begin:BEGIN_I
    //creating memory for p2
    p2=new();
    //class assignment p2 to p1
    p1=p2;
    $display("contents of p1");
    p1.display();
  end:BEGIN_I

endmodule:virtual_task
