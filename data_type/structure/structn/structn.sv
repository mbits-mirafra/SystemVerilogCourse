//Unpacked structure example
module struct1;
struct{
        //Declaration of structure members
        string name;
        int salary;
        byte id;
}employee;     //structure name

initial begin

//Initialization of values to structure variables
employee = '{ "sam" , 16897,123};
//Display the values of structure members
$display("\n Unpacked structure example");
$display("\n structure_name = employee" );
$display("\n employee =%p" ,employee);

//Updating the values
employee.name = "Ram";
employee.salary = 56886;
employee.id = 567;

//Display the values.
$display("\n employee = %p" ,employee);
$display("");

end
endmodule:struct1


