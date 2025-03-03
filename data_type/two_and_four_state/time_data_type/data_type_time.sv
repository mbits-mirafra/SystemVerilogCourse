// in this module declare time data type

module data_type_time;  // declare module name
 time time_data; //declare time variable
 
initial begin
  // Display information about time datatype  

  $display("\n//time is 64-bit unsigned integer");
  $display("\nBefore initialization initial value of time = %0t",time_data);
  
  #5;// Delay of 5 time units   
  // Assign the current simulation time to time_data
  // $time returns the current simulation time as an integer
  time_data = $time;
  $display("\nAfter initialization value of time = %0t\n", time_data);

end
endmodule
