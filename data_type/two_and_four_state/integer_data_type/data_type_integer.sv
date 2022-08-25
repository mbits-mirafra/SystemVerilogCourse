// in this module declare integer data type

module data_type_integer;  // declare module name
 integer integer_data; //declare integer variable, by default integer is signed
 
initial begin
  
  $display("\n//integer is 4-state 32-bit signed number ");
  $display("\nBefore initialization Default value of integer = %0b",integer_data);
  
  integer_data = 32'b11x0_101x_1xz0_0111; // assign value for the integer

  $display("\nAfter initialization value of integer = %0b\n", integer_data);
  
 end
endmodule
