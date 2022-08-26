/*Syntax -
if(condition)begin
  statements;
end
else begin
  Statements;
end
*/
//in below code is use for the comparing of two numberusing if else condition

  module if_else_code;
  logic [3:0] a,b;
  initial begin
    a=4'b1;
    b=4'b1;

    if(a && b)
      $display("a is equal to b");
      else
        $display("a is not equal to b");
      end 


  endmodule :if_else_code


