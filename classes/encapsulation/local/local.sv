//--------------------------------------------------------------------------------------------
//Local:
//
//A member declared as 'local' is accessible only to the methods of the same class and 
//will not be able to access by child class.
//--------------------------------------------------------------------------------------------
class parent;
  bit [3:0] a,b;
  local bit[5:0] c;
  local int d = 5;

  function int sum(bit[4:0]val1,val2);
    c = val1 + val2;
    return c;
  endfunction:sum

  function void display();
    $display("sum = %0d",c);
    $display("d = %0d",d);
  endfunction:display

endclass:parent

class child extends parent;

  function void disp();
    //display("d = %0d",d);
  endfunction

endclass:child


module encap();

  parent p;
  child c1;
  int e;

  initial begin
    p = new();
    c1 = new();
    e = p.sum(1010,0101);
    p.display();
   // p.c = 5'b10;
   // p.display();
   // c1.disp();
  end

endmodule:encap

