//--------------------------------------------------------------------------------------------
//If the package parameter and module variable have same name then with help of scope resolution
//operator we can access the package parameter 
//--------------------------------------------------------------------------------------------
package my_pkg;
  //declare variable and assigning value
  int a=5;
endpackage

module pkg_exm;
  // declare variables and assigning initial value
  int a=10;
  int b=20;
  int c,d;
  
  initial begin
     $display("value a (package parameter) =%0d and  value of a (module variable)=%0d",my_pkg::a,a);
     //here variable a is package parameter as well as module variable and both have different variable
     //using scope resolution assigning sum of package variable to c
     c = my_pkg::a+b;
     //using this module variable assigning sum to d
     d = a+b;
     //printing sum variable c and d
     $display("value c=%0d",c);
     $display("value d=%0d",d);
  end

 endmodule
