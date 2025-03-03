//--------------------------------------------------------------------------------------------
//Public:
//
//By default if we does not define any attributes with keywords 'local' and 'protected', 
//then by default it is 'public'. It provides full access to all attributes and methods 
//to child classes.
//--------------------------------------------------------------------------------------------
class parent;
  //declared class properties
  int a,b;
  int c;
  int d = 5;
  //declared sum function
  function int sum(int val1,val2);
    //assigning value in c
    c = val1 + val2;
    //returning value c
    return c;
  endfunction:sum
  //printing c and d in this function
  function void display();
    $display("\nsum = %0d",c);
    $display("1.d = %0d",d);
  endfunction:display

endclass:parent

class child extends parent;
  //declared function disp and printing parent class variable d
  function void disp();
    $display("2.d = %0d\n",d);
  endfunction

endclass:child

module public_variable();
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
    //assiging value to parent class d using child class handle
    c1.d = 10;
    //calling child function
    c1.disp();
  end

endmodule:public_variable

