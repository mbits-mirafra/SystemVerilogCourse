// in this module declare enum data type.

module set_value_enum;
  
//in the below line set value other than default to an enum data type.
 enum {MONDAY=0, TUESDAY, WEDNESDAY=5, THURSDAY=7, FRIDAY=10, SATURDAY, SUNDAY }days;

 initial begin

   //displaying days and its value
   $display("\n//days and given its value = {\n MONDAY=0,\n TUESDAY,\n WEDNESDAY=5,\n THURSDAY=7,\n FRIDAY=10,\n SATURDAY,\n SUNDAY\n }");
   days = days.first; //assign first day in variable days

    $display("");

    // using for loop displaying the days name and its default value.
     for(int i=0;i<7;i++) begin
        $display("Days name = %0s  and its value is = %0d",days.name,days);
        days = days.next; // assign next day in variable, increament value of days
     end

     $display("");

   end
endmodule : set_value_enum
