//--------------------------------------------------------------------------------------------
//
//Public:
//
//By default if we does not define any attributes with keywords 'local' and 'protected', 
//then by default it is 'public'. It provides full access to all attributes and methods 
//to child classes.
//--------------------------------------------------------------------------------------------
class parent;
  bit [3:0] a,b;
  bit[5:0] c;
  int d = 5;

  function int sum(bit[4:0]val1,val2);
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


module pub();

  parent p;
  child c1;
  int e;

  initial begin
    p = new();
    c1 = new();
    e = p.sum(1010,0101);
    p.display();
    c1.d = 10;
    c1.disp();
  end

endmodule:pub

