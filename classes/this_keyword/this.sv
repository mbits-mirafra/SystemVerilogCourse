//--------------------------------------------------------------------
//The this keyword resolves the ambiguity of a compiler when
//class properties and arguments passed to class methods are the same.
//
//--------------------------------------------------------------------
class base_class;    //define a class

  //define a properties of class
  string fan ="OFF" ; 
  string switch="OFF"; 
   
  //define a method of class
  function void open_electricity();
    string fan="ON";      //here the argument of method is same as class properties
    string switch="ON";
     //fan variable of base_class should be assigned with local variable fan
     //using this keyword
    this.fan=fan;
    this.switch=switch;
    $display("Inside class method :- switch is %0s that's why fan is %0s",switch,fan);
  endfunction

endclass

module check_electricity;
  base_class b1;     //create a handle
  
  initial begin
    b1=new();     //create an object
    b1.open_electricity;   //access the class method
    $display("Outside class :- switch is %0s that's why fan is %s",b1.switch,b1.fan);
  end

endmodule
