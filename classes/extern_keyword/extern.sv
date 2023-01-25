//-------------------------------------------------------
//using the extern keyword we define the class method outside 
//the body of class
//-------------------------------------------------------
class home;
  string switch;
  string fan = "OFF";

  //function declaration - extern indicates out-of-body declaration
  extern function void display();
endclass:home

//function implementation outside class body
function void home::display();
  string switch="OFF";
  $display("The switch is %0s that's why fan is %0s",fan,switch);
endfunction:display

module extern_example;
  home h;

  initial begin:BEGIN_I
    h=new();
    $display("Using extern keyword we are creating prototype for our function in the class");
    $display("Then we are declaring the function outside the class");
    h.display;
  end:BEGIN_I

endmodule:extern_example
