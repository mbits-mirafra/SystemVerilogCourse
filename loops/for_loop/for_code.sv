/* Syntax 
for([initialization]; <condition>; [modifier])
begin
  multiple statements
end
*/

module for_loop;
initial begin//procedural block
  $display("----for loop output ---");

  for (int i=0;i<5;i++)//for loop conditions
  
    $display("\t Value of i =%0d",i);
  end
endmodule:for_loop
