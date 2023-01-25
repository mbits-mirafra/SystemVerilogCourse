// in this module declare time data type

module data_type_time;  // declare module name
 time time_data; //declare time variable
 
initial begin
  
  $display("\n//time is 64-bit unsigned integer");
  $display("\nBefore initialization initial value of time = %0t",time_data);
  
  #5;  //declare time
  time_data = $time; // assign value for the time, $time returns integer value, a store only integer value

  $display("\nAfter initialization value of time = %0t\n", time_data);

end
endmodule
