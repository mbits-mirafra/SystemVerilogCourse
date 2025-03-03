// in this module declare real data type

module data_type_real;  // declare module name
 real real_data; // Declare a real (floating-point) variable  
 
initial begin
  
  $display("\n//real is 64-bit real number ");
  $display("\nBefore initialization Default value of real = %0d",real_data);
  
  // Assign a floating-point value to real_data
  real_data =4.43; 
  // Display the value of real_data after assignment
  $display("\nAfter initialization value of real = %f\n", real_data);

 end
endmodule
