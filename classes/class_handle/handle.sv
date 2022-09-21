//...............................................
//handle is just name of the class that is point  
//to an object of the class.
//this handle is point to the NULL
//..............................................
class home;    //define class

  //declare class properties
  bit light;
  int fan ;
  string switch;

  //define class method(task/function)
  task open_electricity();
    switch = "ON";
    $display("switch is %s so electricity is open",switch);
  endtask
endclass

module tb;
 //create a handle for a class home that can point to an object
 //of the class type home 
home h1;
initial begin
  if (h1==null)
    $display("object is empty");
    else
      $display("object is not empty");
  end
endmodule
