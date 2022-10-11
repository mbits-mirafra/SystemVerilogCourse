//-------------------------------------------------------
//Deep copy:
//In deep copy we have two different memory locations and 
//we use 'copy' in deep copy
//-------------------------------------------------------

//----class 2----
class branches;
  string c;
  int d;
  //companies pk;
  
  function new();
    c="Banglore";
    d=1;
  endfunction:new
  
  function void disp();
    $display("\t c=%0d,\t d=%0d",c,d);
  endfunction:disp

  function void deep(branches copy);//copy
    this.c=copy.c;
    this.d=copy.d;
  endfunction:deep

endclass:branches

module deep;
  branches p1;
  branches p2;

  initial begin:BEGIN_I
    p1=new();
    p2=new();
    p2.deep(p1);//deep copy
    $display("contents of branch p1 before changes");
    p1.disp();
    $display("contents of branch p2 before changes");
    p2.disp();
    //changing the values of p1 and p2
    p1.c="Manipal";
    p2.c="Hyderabad";

    $display("contents of branches p1 after changes");
    p1.disp();
    $display("contents of branches p2 after changes");
    p2.disp(); 
  end:BEGIN_I

endmodule:deep

