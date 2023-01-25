//--------------------------------------------------------------------------------------------
//If the package parameter and module variable have same name then with help of scope resolution
//operator we can access the package parameter 
//
//--------------------------------------------------------------------------------------------
package my_pkg;
   int a=5;
endpackage

 module pkg_exm;
 
    int a=10;
    int b=20;
    int c,d;
    
//here variable a is package parameter as well as module variable and both have different variable

    initial begin
       $display("value a (package parameter) =%0d and  value of a (module variable)=%0d",my_pkg::a,a);
       c = my_pkg::a+b;
       d = a+b;
       $display("value c=%0d",c);
       $display("value d=%0d",d);
    end

 endmodule
