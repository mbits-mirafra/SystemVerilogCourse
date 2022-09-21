//-------------------------------------------------------
//using the extern keyword we define the class method outside 
//the body of class
//-------------------------------------------------------
class home;
  string switch;
  string fan = "OFF";

  //function declaration - extern indicates out-of-body declaration
  extern function void display();
endclass

  //function implementation outside class body
function void home::display();
  string switch="OFF";
  $display("The switch is %0s that's why fan is %0s",fan,switch);
endfunction

module extern_example;
home h;
initial begin
  h=new();
  h.display;
end
endmodule
