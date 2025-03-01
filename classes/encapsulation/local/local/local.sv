//--------------------------------------------------------------------------------------------
//Local:
//A member declared as 'local' is accessible only to the methods of the same class and 
//will not be able to access by child class.
//--------------------------------------------------------------------------------------------
class parent;
  //declare class properties accessible this class and child
  int a,b;
  //declare local properties accessible only this class
  local int c;
  local int d = 5;
  //declared class method 
  function int sum(int val1,val2);
    //assigning value to local variable because
    //we can't access in child class 
    c = val1 + val2;
    return c;
  endfunction:sum
  //declared function for printing value c and d
  function void display();
    $display("\nsum = %0d",c);
    $display("d = %0d",d);
  endfunction:display

endclass:parent

module local_variable();
  //declared handle of parent class
  parent p;
  int e;

  initial begin
    //declared object of p
    p = new();
    //calling parent class method and passing argument
    //as value and storing return value in e
    //because we can't access c variable here
    e = p.sum(5,10);
    //calling display function
    p.display();
    //printing return value
    $display("return value e = %0d\n",e);
  end

endmodule:local_variable

