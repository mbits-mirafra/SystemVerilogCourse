/*
This statement is same as the if condition statement when only one condition is true in the whole code . If more than the conditions are true this statement execute the first one which is true ,gives the output and will not write any error only write the warning(that more than one statement is true).
syntax -
unique if(condition)begin
  Statements;
end
else if(condition)begin
  Statements;
end
*/

module unique_if_else_code;
byte number = 8'b0000_0000;//data type is byte and variable name id number 

initial 
  begin 
  unique if (number<0)
    begin
      $display("Number is negative");
    end
    else if(number == 0)
    
    begin
      $display("Number is 0");
    end
  end 
  endmodule :unique_if_else_code
