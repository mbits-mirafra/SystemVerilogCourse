//--------------------------------------------------------------------------------------------
//Protected:
//
//Sometimes there will be necessity to access the members of parent class by the child class. 
//This can be done by the keyword 'protected'
//--------------------------------------------------------------------------------------------
//declared parent class
class parent;
  //declared class properties
  int a,b;
  //declared class properties as protected it will access by child only
  protected int c;
  protected int d = 5;
  //declared function
  function int sum(int val1,val2);
    //assigning value in c
    c = val1 + val2;
    //returning c value
    return c;
  endfunction:sum
  //printing c and d using this function
  function void display();
    $display("\nsum = %0d",c);
    $display("1.d = %0d",d);
  endfunction:display

endclass:parent

class child extends parent;
  //declared function disp and printing parent class variable d(protected)
  function void disp();
    $display("2.d = %0d\n",d);
  endfunction

endclass:child

module protected_variable();
  //declared handle of parent class and child
  parent p;
  child c1;
  int e;

  initial begin
    //declared object of p and c1
    p = new();
    c1 = new();
    //calling parent class method and passing argument
    //as value and storing return value in e
    e = p.sum(5,10);
    //calling parent function
    p.display();
    //calling child function
    c1.disp();
  end

endmodule: protected_variable
