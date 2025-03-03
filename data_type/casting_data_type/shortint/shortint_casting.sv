// casting - shortint to int and shortint to longint

module casting_shortint();
 //declare variable shortint, int and longint type
 shortint shortint_data; // Declare a shortint variable (16-bit signed)
 int int_data;           // Declare an int variable (32-bit signed)
 longint longint_data;   // Declare a longint variable (64-bit signed)

 initial begin
  // Assign an 8-bit binary value to shortint_data  
  // Note: shortint is a 16-bit signed integer, so the value will be zero-extended or sign-extended  
   shortint_data = 8'b10110011; // assign shortint data

   $display("\nsize of shortint = %0d",$size(shortint_data));
   $display("before casting shortint_data = %b",shortint_data);

   // Perform explicit type casting from shortint (16-bit) to int (32-bit)
   int_data = int'(shortint_data);  

   $display("after casting shortint to int = %b\n",int_data);

   // Perform explicit type casting from shortint (16-bit) to longint (64-bit)
   longint_data = longint'(shortint_data); 

   $display("after casting shortint to longint = %b\n",longint_data);

 end
endmodule : casting_shortint
