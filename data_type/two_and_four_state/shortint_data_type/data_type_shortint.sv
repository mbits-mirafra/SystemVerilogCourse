// in this module declare shortint data type

module data_type_shortint;  // declare module name
 shortint shortint_data; //declare shortint variable, by default shortint is signed
 
initial begin
  
  $display("\n//shortint is 16-bit signed ");
  $display("\nBefore initialization Default value of shortint = %0b",shortint_data);
  
  shortint_data = 16'b1101001010101001; // assign value for the shortint

  $display("\nAfter initialization value of shortint = %0b", shortint_data);

  shortint_data = 32767; // assign maximum value for the shortint

  $display("\nAfter initialization maximum value of shortint = %0b\n", shortint_data);
end
endmodule
