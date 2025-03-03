// casting - int to longint

module casting_int();
int int_data;         // Declare an int variable (32-bit signed)
longint longint_data; // Declare a longint variable (64-bit signed)

 initial begin
   // Assign an 8-bit binary value to int_data  
   // Since int is 32-bit, the 8-bit value will be zero-extended or sign-extended 
   int_data = 8'b11110011; 

   $display("\nsize of int = %0d",$size(int_data));
   $display("before casting int_data = %b",int_data);

   // Perform explicit type casting from int (32-bit) to longint (64-bit)  
   longint_data = longint'(int_data); 

   $display("after casting int to longint = %b\n",longint_data);

 end
endmodule : casting_int
