/*Synatx
forever
statements
forever begin
  multiple statements
end
*/

module forever_loop;
int a; //int data_type and variable a
initial begin //procedural blocks
  $display("----------");

  //forever block
  forever begin
    $display("\tValue of a=%0d",a);
    a++;
    #5;  
  end

  $display("-----");
end
initial begin
  #20 $finish;
end
endmodule:forever_loop 
