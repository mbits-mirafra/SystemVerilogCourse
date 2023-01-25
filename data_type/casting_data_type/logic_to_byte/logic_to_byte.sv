// casting - logic to byte

module casting_logic_byte();
 // create variable logic and byte type
 logic [3:0] logic_data;
 byte byte_data;

 initial begin

   logic_data = 4'b1xx1; //assign logic type value 

   $display("\nbefore casting logic_data = %0b",logic_data);

   byte_data = byte'(logic_data); // casting logic to byte

   $display("after casting logic to byte = %b\n",byte_data);

 end
endmodule : casting_logic_byte
