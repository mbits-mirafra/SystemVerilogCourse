// in this module declare shortint data type

module data_type_shortint;  // declare module name
 shortint shortint_data; //declare shortint variable, by default shortint is signed
 
initial begin
  
  // Display information about the shortint data type

  $display("\n//shortint is 16-bit signed ");
  // Display the default value of shortint_data before assignment
  // %0b prints the value in binary format
  $display("\nBefore initialization Default value of shortint = %0b",shortint_data);
  
  // Assign a 16-bit binary value to shortint_data
  shortint_data = 16'b1101001010101001;
  $display("\nAfter initialization value of shortint = %0b", shortint_data);

  // Assign the maximum positive value for a 16-bit signed shortint (32767)

  shortint_data = 32767; // assign maximum value for the shortint

  $display("\nAfter initialization maximum value of shortint = %0b\n", shortint_data);
end
endmodule
