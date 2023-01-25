//-------------------------------------------------------
//Constant class properties:
//Instance-class:
//Here we assign 'a' as the constant value using 'const' keyword
//But here we can assign the value in any function but that function should be in 
//the class.
//-------------------------------------------------------

//class
class data;
  const int a;
  string b;
  
  function new();
    a=5;
    b="bhavana";
  endfunction:new
  
  function void display();
    $display("a=%0d,b=%0d",a,b);
  endfunction:display

endclass:data

module instance_class;
  data t1;

 
  initial begin:BEGIN_I
    t1=new();
    //t1.a=2;
    //-------------------------------------------------------
    // Here we should not assign value for the 'a' because 
    // we declared the 'a' as constant variable.
    // so if we assign any value to the 'a' it throws errors 
    // it won't take any value eventhough we declared.
    //-------------------------------------------------------
    t1.b="bjt";
    $display("");
    t1.display();
    $display("");
  end:BEGIN_I

endmodule:instance_class
