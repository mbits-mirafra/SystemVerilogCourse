module ran_fun;  

// Integer is a signed data type, can hold both positive and negative values
integer a;  
integer d;  

// Logic is an unsigned data type, used for three-state logic (0, 1, X, Z)
logic [2:0] b;  

// Bit is an unsigned data type, stores only 0 or 1
bit [5:0] e;  

// Byte is an unsigned data type (8-bit) that can store values from 0 to 255
byte c;   

initial begin  
   
  // Generate a random signed 32-bit integer value
  a = $random();  

  // Generate a random unsigned 32-bit integer value
  b = $urandom();  

  // Generate an unsigned random number between 2 and 4 (inclusive)
  c = $urandom_range(4,2);  

  // Generate a signed random number using a seed value (23)
  d = $random(23);  

  // Generate an unsigned random number using a seed value (4)
  e = $urandom(4);  

  // Displaying the results with explanations
  $display ("a = $random()      // Returns a 32-bit signed random variable");
  $display("Random Value of a  =  %0d", a);
  $display("-----------------------------------------------------------------------");

  $display("b = $urandom()   // Returns a 32-bit unsigned random value.");
  $display("Random Value of b = %0d", b);
  $display("----------------------------------------------------------------------");

  $display("c = $urandom_range(4,2)   // Returns an unsigned random number in the given range");  
  $display("Random value of c = %0d", c);
  $display("------------------------------------------------------------------------");

  $display("$random(seed);     // Uses a seed value to generate a reproducible random number");
  $display("d = $random(23);  // Seed value = 23");
  $display("Random value of d = %0d", d );
  $display("---------------------------------------------------------------------------");

  $display("$urandom(seed);  // Uses a seed value for unsigned random number generation");
  $display("e = $urandom(4);  // Seed value = 4;");
  $display("Random value of e = %0d", e);
  $display("-----------------------------------------------------------------------------");                                      
end  

endmodule

