//casting - integer to int

module integer_to_int();
 integer integer_data;  // Declare an integer variable (32-bit signed)
 int int_data;          // Declare an int variable (32-bit signed)
   initial begin
     // Assign a binary value to integer_data  
     // Note: integer type does not support 'x' and 'z', they will be treated as 0s 
     integer_data = 8'b10xz1x11;  //assin value in integer data

     // Display the size of integer_data in bits

     $display("\nsize of integer = %0d",$size(integer_data));
     $display("before casting integer_data = %b",integer_data);

     // Perform explicit type casting from integer to int

     int_data = int'(integer_data);  // casting integer to int

     $display("after casting integer to int = %b\n",int_data);
   end
endmodule : integer_to_int
