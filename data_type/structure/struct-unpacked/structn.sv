
//Unpacked structure
 //Declaration of structure members

struct {
  string name;    // String field for employee name
  bit [15:0] salary; // 16-bit field for salary
  byte id;       // 8-bit field for employee ID
} employee_s;    // Structure name

module struct1;
  
initial begin 
 //Iinitialization of values to structure variables
 
  employee_s = '{ "sam",16897,123}; // Assign values to the structure fields
  
  // Display the values of the structure
  $display("\n Unpacked structure example" );
  $display("\n structure name 'employee_s'");
  $display("\n employee_s = %p" ,employee_s); //Display the values.

  $display("\n size of employee_s: %0d", $bits(employee_s));

end  
endmodule


