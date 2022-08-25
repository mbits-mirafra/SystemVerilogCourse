// in this module declare typedef type enum data type.

module typedef_enum;
  
  //in the below line declare typedef type enum data type.
  typedef enum {monday, tuesday, wednesday, thursday, friday, saturday, sunday }week;
  week day; //declare week type day variable
    
  initial begin

    $display("\n//days = {monday, tuesday, wednesday, thursday, friday, saturday, sunday }");
    day = day.first(); //assign first day in variable day
    $display("\nfirst day name = %0s  and its value is = %0d",day,day);

    day = day.last();  //assign last day in variable day
    $display("\nlast day name = %0s  and its value is = %0d",day,day);

    day = wednesday;  // assign wednesday in day
    day = day.next(); // assign the next day after wednesday
    $display("\nnext day name after wednesday  = %0s  and its value is = %0d",day,day);

    day = wednesday;
    day = day.prev();  //assign the previous day befor wednesday
    $display("\nprevious day name befor wednesday  = %0s  and its value is = %0d",day,day);

    $display("\ncurrent day name = %0s  and its value is = %0d",day.name(),day);

    $display("\ntotal number of days in week type is = %0d\n",day.num());
 
  end
endmodule : typedef_enum
