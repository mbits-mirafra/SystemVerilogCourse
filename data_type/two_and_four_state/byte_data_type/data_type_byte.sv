// in this module declare byte data type
module data_type_byte;   //declare module name
byte byte_data;   // declare byte type variable, by default byte is signed

initial begin
  $display("\n//byte is 8-bit signed integer");

  $display("\nBefore initialization Default value of byte data = %0b", byte_data);

  byte_data = 8'b10101101;  // assigning the value for the byte data

  $display("\nAfter initialization value of byte data in binary format = %0b", byte_data);
  $display("After initialization value of byte data in decimal form signed 2's complement = %0d\n", byte_data);
  end
  endmodule: data_type_byte
