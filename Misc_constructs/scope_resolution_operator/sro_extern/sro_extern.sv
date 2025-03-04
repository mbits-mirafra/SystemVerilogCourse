//--------------------------------------------------------------------------------------------
//with help of the scope resolution operator we can define the extern method outside the class
//--------------------------------------------------------------------------------------------
class my_class;
   //declare variable and assigning value
   int a=5;
   int b=10;
   //declare function using extern keyword defined outside class
   extern function void sum();
   extern function void sub();
endclass: my_class

//Definition of an external function using scope resolution operator
function void my_class::sum();
  //declare variable and assigning sum of a+b
  int result1;
  result1=a+b;
  $display("After summation the result1 is =%0d",result1);
endfunction

//Definition of an external function using scope resolution operator
function void my_class::sub();
  //declare variable and assigning sub of b-a
  int result2;
  result2=b-a;
  $display("After subsration the result2 is =%0d",result2);
endfunction

module extern_exm;
  initial begin: BEGIN_I
    // declare class handle
    my_class A1;
    //create object A1
    A1=new();
    //calling class functions
    A1.sum(); 
    A1.sub();
  end: BEGIN_I
endmodule:extern_exm
