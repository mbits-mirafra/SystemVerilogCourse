
//Unpacked structure
 //Declaration of structure members

struct{
    string name;
    bit[15:0] salary;
    byte id;
 }employee_s; //structure name

module struct1;
  
initial begin 
 //Iinitialization of values to structure variables
 
employee_s = '{ "sam",16897,123};
  
  $display("\n Unpacked structure example" );
  $display("\n structure name 'employee_s'");
  $display("\n employee_s = %p" ,employee_s); //Display the values.

  $display("\n size of employee_s: %0d", $bits(employee_s));

end  
endmodule


