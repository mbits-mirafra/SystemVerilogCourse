//--------------------------------------------------------------------------------------------
//with help of scope resolution operator we can access the pacakage propeties inside module 
//without importing  
//
//--------------------------------------------------------------------------------------------
package my_pkg;
   int a= 5;
endpackage:my_pkg

module pkg_exm;
   
   int b;

   initial begin:BEGIN_I
      b=my_pkg::a;      
      
      //without importing variable 'a' is accessed here by using scope resolution operator
      
      $display("Assining the value of a (properties of package) into b without importing package");
      $display("b=%0d",b);
   end:BEGIN_I

endmodule:pkg_exm
