//--------------------------------------------------------------------------------------------
//with help of the scope resolution operator we can access the static properties of class or
//package inside the module
//
//--------------------------------------------------------------------------------------------
class my_class;
   
   int a;
   static int b;

   function void display();   
      $display("value of a=%0d",a);
      $display("value of b=%0d",b);
   endfunction

endclass:my_class
 
module static_exm;

   initial begin:BEGIN_I
       my_class A1;
       A1 =new();
       A1.a=10;
       $display("Using the scope resolution operator we can access the static properties");
       my_class::b=20; 
       
       //Here using the scope resolution operator we declare the value of static properties b inside the module
       
       A1.display();
  end:BEGIN_I

endmodule:static_exm
