// casting real to int

module casting_real_int();
 real real_data; // Declare a real (floating-point) variable (64-bit)
 int int_data;   // Declare an int variable (32-bit signed)

 initial begin

   // Assign a floating-point value to real_data  
   real_data = 8.04;

   // Display the value of real_data before type casting
   // %0.2f formats the floating-point value to 2 decimal places
   $display("\nbefore casting real_data = %0.2f",real_data);

   // Perform explicit type casting from real (64-bit floating-point) to int (32-bit signed integer)

   int_data = int'(real_data); // casting real to int

   $display("after casting real to int = %0d\n",int_data);

 end
endmodule : casting_real_int
