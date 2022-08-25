// in this module declare enum data type.

module set_value_enum;
  
//in the below line set value other than default to an enum data type.
 enum {monday=0, tuesday, wednesday=5, thursday=7, friday=10, saturday, sunday }days;

 initial begin

   //displaying days and its value
   $display("\n//days and given its value = {monday=0, tuesday, wednesday=5, thursday=7, friday=10, saturday, sunday }");
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
