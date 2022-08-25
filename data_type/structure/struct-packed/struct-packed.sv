// packed structure

//'packed' keyword used to declare explicitly to make packed structure
typedef struct packed { 
	byte id;
	bit[7:0]experience;
	logic[15:0] salary;

} employee_details;     //Structure_name

module emp_info;

//declare structure variable 
employee_details emp_info; 

initial begin

//values initialize to structure members 
emp_info.id =43;
emp_info.experience = 2;
emp_info.salary = 25000;

//Display the values
$display("\n Packed structure example");
$display("\n structure name = employee_details"); 
$display("\n emp_info = %p", emp_info);


//Initialization of values to structure members 
emp_info.id = 67 ;
emp_info.experience  = 4;
emp_info.salary = 50000;

//Display the values
$display("\n emp_info = %p", emp_info);
$display("");

end
endmodule:emp_info




