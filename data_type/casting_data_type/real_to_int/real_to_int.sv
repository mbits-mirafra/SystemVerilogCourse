// casting real to int

module casting_real_int();
 // declare variable real and int type
 real real_data;
 int int_data;

 initial begin

   real_data = 8.04; // assigning real data

   $display("\nbefore casting real_data = %0.2f",real_data);

   int_data = int'(real_data); // casting real to int

   $display("after casting real to int = %0d\n",int_data);

 end
endmodule : casting_real_int
