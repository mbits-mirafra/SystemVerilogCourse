// casting bit to byte

module casting_bit_byte();

 byte byte_data;     // Declare a byte variable (8-bit signed integer)
 bit [3:0] bit_data; // Declare a 4-bit bit-type variable

 initial begin

   //create variable bit and byte type
   bit_data = 4'b1011; // assign value bit type

   $display("\nbefore casting bit_data = %0b",bit_data);

   // Perform explicit type casting from bit (4-bit) to byte (8-bit)
   byte_data = byte'(bit_data); // casting bit to byte

   $display("after casting bit to byte = %b\n",byte_data);

 end
endmodule : casting_bit_byte
