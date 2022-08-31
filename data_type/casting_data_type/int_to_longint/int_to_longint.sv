// casting - int to longint

module casting_int();
 // declare variable int and longint type
 int int_data; 
 longint longint_data;

 initial begin

   int_data = 8'b11110011; //assign int data

   $display("\nsize of int = %0d",$size(int_data));
   $display("before casting int_data = %b",int_data);

   longint_data = longint'(int_data); // casting int to longint

   $display("after casting int to longint = %b\n",longint_data);

 end
endmodule : casting_int
