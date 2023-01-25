//casting - integer to int

module integer_to_int();
 //declare variable ineger and int type
 integer integer_data;
 int int_data;

 initial begin
  
   integer_data = 8'b10xz1x11;  //assin value in integer data

   $display("\nsize of integer = %0d",$size(integer_data));
   $display("before casting integer_data = %b",integer_data);

   int_data = int'(integer_data);  // casting integer to int

   $display("after casting integer to int = %b\n",int_data);

 end
endmodule : integer_to_int
