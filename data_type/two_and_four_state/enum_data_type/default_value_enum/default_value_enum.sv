// in this module declare enum data type.

module default_value_enum;
//in the below line declare enum data type with default value.
enum {MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY,SATURDAY,SUNDAY }days;

initial begin

  //displaying days 
  $display("\n// days = {\n MONDAY,\n TUESDAY,\n WEDNESDAY,\n THURSDAY,\n FRIDAY,\n SATURDAY,\n SUNDAY\n }");
  
  days = days.first; //assign first day in variable days

  $display("");   

  // using for loop displaying the days name and its default value.
  for(int i=0;i<7;i++) begin
    $display("Days name = %0s  and its default value is = %0d",days.name,days);
    days = days.next; // assign next day in variable
  end
  $display("");
 end
 endmodule : default_value_enum
