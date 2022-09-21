//..........................................................
//object is created by using the new() function
//
//..............................................................
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
home h1;     //creating handle
initial begin
      
    //call the new() function of class and create an object
      h1=new();
      if (h1==null)
      $display("object is empty");
      else
        $display("object is not empty");
   end
 endmodule

