// in this module declare real data type

module data_type_real;  // declare module name
 real real_data; //declare real variable
 
initial begin
  
  $display("\n//real is 64-bit real number ");
  $display("\nBefore initialization Default value of real = %0d",real_data);
  
  real_data =4.43; // assign value for the real

  $display("\nAfter initialization value of real = %f\n", real_data);

 end
endmodule
