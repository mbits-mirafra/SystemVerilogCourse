// packed structure
// Define a packed structure named 'employee_details_s'
typedef struct packed {
  byte id;            // 8-bit field for employee ID
  bit [7:0] experience; // 8-bit field for experience
  logic [15:0] salary;  // 16-bit field for salary
} employee_details_s;   // Structure name

module emp_info;

//declare structure variable 
employee_details_s emp_info1; 

initial begin

  // Initialize values to the structure members
  emp_info1.id = 43;          // Assign 43 to the 'id' field
  emp_info1.experience = 2;   // Assign 2 to the 'experience' field
  emp_info1.salary = 25000;   // Assign 25000 to the 'salary' field

  // Display the values of the structure members
  $display("\n Packed structure example");
  $display("\n structure name 'employee_details_s' "); 
  $display("\n emp_info1.id = %p", emp_info1.id);
  $display("\n emp_info1.experience = %p", emp_info1.experience);
  $display("\n emp_info1.salary = %p", emp_info1.salary);
  // Display the total bitstream size of the structure
  $display("\n Bitstream size of emp_info1: %0d", $bits(emp_info1));

end
endmodule:emp_info




