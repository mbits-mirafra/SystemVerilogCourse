//--------------------------------------------------------------------------------------------
//with help of the scope resolution operator we can define the extern method outside the class
//
//--------------------------------------------------------------------------------------------
class my_class;

   int a=5;
   int b=10;
   
   extern function void sum();
   extern function void sub();

endclass:my_class

//Definition of an external function using scope resolution operator

   function void my_class::sum();
      int result1;
      result1=a+b;
      $display("After summation the result1 is =%0d",result1);
   endfunction

   function void my_class::sub();
      int result2;
      result2=b-a;
      $display("After subsration the result2 is =%0d",result2);
   endfunction

  module extern_exm;

     initial begin:BEGIN_I
        my_class A1;
        A1=new();
        A1.sum(); 
        A1.sub();
     end:BEGIN_I

endmodule:extern_exm
