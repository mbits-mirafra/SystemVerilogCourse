//do while
/*
* In do while, condition will be checked after the executed of statements inside the loop
* Syntax -
* do begin
*   Statements;
*   end
*   while(condition)begin
  *     Statements;
  *     end
  *     */

 module do_while_code; 
 int apple = 1; //int data type and variable name is apple
 initial begin //procedural block
     $display("------do while output ---");
       do //do statements
           begin
                 $display("\t Value of apple = %0d", apple);

                     apple = apple +1;
                       end
                       while(apple<6); //while loop condition
                     end
                     endmodule :do_while_code
