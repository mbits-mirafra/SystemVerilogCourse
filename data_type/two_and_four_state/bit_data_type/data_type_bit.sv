//in this module declare bit data type
module data_type_bit;   //declare module name 
bit single_bit_data;   // declare bit type single bit variable
bit [3:0] multi_bit_data;   // declare bit type 4 bit variable 

initial begin
  $display("\nBefore initialization Default value of single bit data = %0b", single_bit_data);
  $display("Before initialization Default value of 4 bit data = %0b", multi_bit_data);

  single_bit_data =1;  // assigning the value for the single bit data
  multi_bit_data = 4'b1100;  // assigning the value for the 4 bit data

  $display("\nAfter initialization value of single bit data = %0b", single_bit_data);
  $display("After initialization value of 4 bit data = %0b", multi_bit_data);

  multi_bit_data = 4'b11xz; //assigning the value of x and z for the 4 bit data
  
  $display("\n//initialization x and z of 4-bit data = 4'b11xz");

  // if any 4-state variable assign its value to a bit data type x and z is replace to 0(zero).
    $display("\nAfter assign x and z, value of 4 bit data = %0b\n", multi_bit_data);
  end
endmodule: data_type_bit
