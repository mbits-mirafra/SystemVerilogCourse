// casting real to time

module casting_real_time();
 real real_data; // Declare a real variable (64-bit floating-point)
 time time_data; // Declare a time variable (64-bit unsigned integer)

 initial begin

   // Assign a floating-point value to real_data
   real_data = 8.04;  //assign real data

   // %0.2f formats the floating-point value to 2 decimal places

   $display("\nbefore casting real_data = %0.2f",real_data);

   // Perform explicit type casting from real (floating-point) to time (64-bit unsigned integer)
   time_data = time'(real_data); //casting real to time

   $display("after casting real to time = %0t\n",time_data);

 end
endmodule : casting_real_time
