//--------------------------------------------------------------------------------------------
//pure virtual methods:
//
//A virtual method inside an abstract class can be declared by keyword 'pure' and 
//is called pure virtual method. The class will automatically consider it as abstract 
//class if any pure virtual method is used
//--------------------------------------------------------------------------------------------
//declared virtual class
virtual class A;
  //declared class properties
  int a,b,c;
  //declared pure virtual methods
  pure virtual function void disp();
  pure virtual task sum();

endclass:A
                       
class B extends A;
  //declaring virtual function because 
  //in parent class we have pure virtual function
  virtual function void disp();
    //assigning value for parent virtual class
    a =10;
    $display("1.Value of a = %0d, b = %0d, c = %0d",a,b,c);
  endfunction:disp

  //declaring virtual task because 
  //in parent class we have pure virtual task
  virtual task sum();
    //assigning value for parent virtual class
    c = a+b;
    $display("2.Value of a = %0d, b = %0d, c = %0d",a,b,c);
  endtask:sum
                                               
endclass:B
                                                 
module pure_virtual_function();                                               
  //declaring child class handle b1
  B b1;
  initial begin
    //creating object of b1
    b1 = new();
    //calling disp function using b1 handle
    b1.disp();
    //assigning value fo parent class using b1.b
    b1.b = 35;
    //calling sum task
    b1.sum;
  end
                                                                                         
endmodule:pure_virtual_function
