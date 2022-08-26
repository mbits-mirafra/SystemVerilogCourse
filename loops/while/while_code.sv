/* A while loop is a control flow statements that allow code executed based on condition.
syntax -
while(condition)
  begin
    multiple Statements;
  end
  */

 module while_code;
 int apple = 1; //int data type and variable name is apple

 initial begin  //procedural blocks
   $display("-----while loop output ---");
 while (apple <6) //while loop and condition
begin
  $display("\t value of apple = %0d", apple);
  apple++;
end
end
endmodule :while_code
