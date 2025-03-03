// in this module declare longint data type

module data_type_longint;  // declare module name
 longint longint_data; //declare longint variable, by default longint is signed
 
initial begin
  
  $display("\n//longint is 64-bit signed ");
  $display("\nBefore initialization Default value of longint = %0b",longint_data);

  // Assign a 64-bit binary value to longint_data  
  // Note: The assigned value contains 'x' and 'z' which may result in unknown behavior  
  
  longint_data = 64'b11x01xz001x01010;

  $display("\nAfter initialization value of longint = %0b\n", longint_data);

 end
endmodule
