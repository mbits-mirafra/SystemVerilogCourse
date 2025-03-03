// casting - logic to byte

module casting_logic_byte();

 logic [3:0] logic_data; // Declare a 4-bit logic vector
 byte byte_data;         // Declare a byte variable (8-bit signed integer)

 initial begin

   // Assign a 4-bit logic value with unknown ('x') states
   logic_data = 4'b1xx1; 

   $display("\nbefore casting logic_data = %0b",logic_data);

  
   // Perform explicit type casting from logic (4-bit) to byte (8-bit)  
   byte_data = byte'(logic_data); 

   $display("after casting logic to byte = %b\n",byte_data);

 end
endmodule : casting_logic_byte
