//-------------------------------------------------------------------
//if the class properties and argument of method is same and we assigned it 
//with each other without using this keyword then ambiguity is arise so that's why
//we use the this keyword
//---------------------------------------------------------------------
class base_class;      //define class 

  //define a properties of class
  string fan ="OFF" ;
  string switch="OFF";

  //define a method of class
  function void open_electricity();
    string fan="ON"; //here the variables of method is same as class properties
    string switch="ON";
    //fan variable of base_class should be assigned with local variable fan without this keyword.
    fan=fan;
    switch=switch;
    $display("Inside class method :- switch is %0s that's why fan is %0s",switch,fan);
  endfunction:open_electricity

endclass:base_class

module check_electricity;
  base_class b1;

  initial begin:BEGIN_I
    b1=new(); //create an object
    b1.open_electricity; //access the class method
    $display("Outside class :- switch is %0s that's why fan is %s",b1.switch,b1.fan);
  end:BEGIN_I

endmodule:check_electricity

