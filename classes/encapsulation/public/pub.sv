//--------------------------------------------------------------------------------------------
//
//Public:
//
//By default if we does not define any attributes with keywords 'local' and 'protected', 
//then by default it is 'public'. It provides full access to all attributes and methods 
//to child classes.
//--------------------------------------------------------------------------------------------
class parent;
  int a,b;
  int c;
  int d = 5;

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


module pub();

  parent p;
  child c1;
  int e;

  initial begin
    p = new();
    c1 = new();
    e = p.sum(5,10);
    p.display();
    c1.d = 10;
    c1.disp();
  end

endmodule:pub

