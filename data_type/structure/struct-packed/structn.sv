
struct {
              string name;
              byte id;
              bit [7:0]  experience;
              logic[15:0] salary;

}employeedetails_s;

module struct1;
  
employeedetails_s  emp1, emp2;

//Initialization of values to structure variables

initial begin

emp1.name = "Sam";
emp1.id = 112;
emp1.experience = 3;
emp1.salary = 23000;

//Display the values of structure members

$display("\n Unpacked structure example");
$display("\n structure_name 'employee_details_s'");
$display("\n emp1.name =%p" ,emp1.name);
$display("\n empl.id =%p" ,empl.id);
$display("\n empl.experience =%p" ,emp1.experience);
$display("\n empl.salary =%p" ,empl.salary);


//Updating the values of emp2
emp2.name = "Ram";
emp2.id= 78;
emp2.experience = 4;
emp2.salary = 30000;

//Display the values.
$display("\n emp2.name = %p" ,emp2.name);
$display("\n emp2.id = %p" ,emp2.id);
$display("\n emp2.experience = %p" ,emp2.experience);
$display("\n emp2.salary =%p" ,emp2.salary);

end
endmodule:struct1

