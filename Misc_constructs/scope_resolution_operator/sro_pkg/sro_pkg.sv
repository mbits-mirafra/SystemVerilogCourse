//--------------------------------------------------------------------------------------------
//with help of scope resolution operator we can access the pacakage propeties inside module 
//without importing  
//--------------------------------------------------------------------------------------------
package my_pkg;
  //declare variable inside package and assigning value
  int a= 5;
endpackage:my_pkg

module pkg_exm;
  //declare variable
  int b;

  initial begin:BEGIN_I
    //using scope resulution operator accessing package variable and assiging to b
    //without importing variable 'a' is accessed here by using scope resolution operator
    b = my_pkg::a;    
    
    $display("Assining the value of a (properties of package) into b without importing package");
    //printing b value
    $display("b=%0d",b);
  end:BEGIN_I

endmodule:pkg_exm
