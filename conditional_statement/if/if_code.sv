/*
Syntax
if(condition)begin
  statements;
end
*/
//module name is if_code
module if_code; 
logic [2:0] weight; //using logic data type [2:0] and variable is weight

assign weight = 3'd5;//here we assigning in the value of 5 to variable

initial begin //procedural block
  if(weight<3'd7) //if_condition
  begin
    $display("weight is 5kg");
    $display("Need to increase the weight");
  end
end
endmodule :if_code

