//-------------------------------------------------------
//Shallow copy:
//
//-------------------------------------------------------
class company;
  string a;
  int b ;
  function new();   
    a = "Mirafra";
    b = 13;
  endfunction
endclass
//-- class ---  
class Mirafra;
  string c;
  int d;
  company ar;

  function new();
    c = "Teams";
    d = 8;
    ar = new();
  endfunction

  function void display();
    $display("\t a=%0d",ar.a);
    $display("\t b=%0d",ar.b);
    $display("\t c=%0d",c);
    $display("\t d=%0d",d);
  endfunction
endclass

module shallow;
Mirafra p1;
Mirafra p2;
initial begin
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
end
endmodule


