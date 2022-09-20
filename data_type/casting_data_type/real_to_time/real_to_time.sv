// casting real to time

module casting_real_time();
 // create real and time type variable 
 real real_data;
 time time_data;

 initial begin

   real_data = 8.04;  //assign real data

   $display("\nbefore casting real_data = %0.2f",real_data);

   time_data = time'(real_data); //casting real to time

   $display("after casting real to time = %0t\n",time_data);

 end
endmodule : casting_real_time
