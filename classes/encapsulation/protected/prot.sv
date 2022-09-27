//--------------------------------------------------------------------------------------------
//
//Protected:
//
//Sometimes there will be necessity to access the members of parent class by the child class. 
//This can be done by the keyword 'protected'
//--------------------------------------------------------------------------------------------
class parent;
  int a,b;
  protected int c;
  protected int d = 5;

  function int sum(int val1,val2);
    c = val1 + val2;
    return c;
  endfunction:sum

  function void display();
    $display("sum = %0d",c);
    $display("1.d = %0d",d);
  endfunction:display

endclass:parent

class child extends parent;

  function void disp();
    $display("2.d = %0d",d);
  endfunction

endclass:child


module prot();

  parent p;
  child c1;
  int e;

  initial begin
    p = new();
    c1 = new();
    e = p.sum(5,10);
    p.display();
   // p.d = 10;
    c1.disp();
  end

endmodule:prot

