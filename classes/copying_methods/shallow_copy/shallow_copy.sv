class company;
  string a;
  int b ;
  
  function new();   
    a = "Mirafra";
    b = 13;
  endfunction:new

endclass:company
 
class Mirafra;
  string c;
  int d;
  company ar;

  function new();
    c = "Teams";
    d = 8;
    ar = new();
  endfunction:new

  function void display();
    $display("a=%0d,\t b=%0d,\t c=%0d,\t d=%0d",ar.a,ar.b,c,d);
  endfunction:display

endclass:Mirafra

module shallow;
  Mirafra p1;
  Mirafra p2;

  initial begin:BEGIN_I
    p1 =new();
    $display("contents of p1");
    p1.display();
    p2 =new p1;
    $display("contents of p2");
    p2.display();
    p2.c="BJT";
    p2.ar.a="Team3";
    p2.ar.b=4;
    $display("diplay contents of p1");
    p1.display();
    $display("diplay contents of p2");
    p2.display();
  end:BEGIN_I

endmodule:shallow


