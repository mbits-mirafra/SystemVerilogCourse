//-------------------------------------------------------
//Deep copy:
//In deep copy we have two different memory locations and 
//we use 'copy' in deep copy
//-------------------------------------------------------

//----class 1----
class companies;
  string a="Mirafra";
endclass:companies

//----class 2----
class branches;
  string c;
  int d;
  companies pk;
  
  function new();
    c="Banglore";
    d=1;
    pk=new();
  endfunction:new
  
  function void disp();
    $display("a=%0d,\t c=%0d,\t d=%0d",pk.a,c,d);
  endfunction:disp

  function void deep(branches copy);//copy
    this.c=copy.c;
    this.pk= new copy.pk;
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
    p1.pk.a="BJT";
    p2.pk.a="Mirafra-Teams";
    p1.c="Manipal";
    p2.d=9;
    p2.c="Hyderabad";
    p1.d=8;
    $display("contents of branches p1 after changes");
    p1.disp();
    $display("contents of branches p2 after changes");
    p2.disp(); 
  end:BEGIN_I

endmodule:deep

