//importing package
import one::*;
//declare module
module module_ex;
  //declare variable string type
  string id1;
  //declare and create object for details class 
  //which is present in package 
  //using import package we can access here
  details emp1=new(21,"kumar");

  initial begin
    string g;
    //printing age using class handle
    $display("details of id1 are : %0d",emp1.age);
    //calling class function 
    emp1.getdetails();
    //calling class task 
    emp1.t1();

    //calling package function
    pack_func();
    //calling package task by passing argument
    pack_task(10,g);
    //printing g string
    $display(g);
  end
endmodule:module_ex
