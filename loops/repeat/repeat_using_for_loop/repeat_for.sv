// Implementation of repeat loop using the for loop.

module repeat_for;
initial begin
  for (int i = 1;i<=4;i++)begin   // for loop initialization, repeat the statements inside it for  
    $display ("Good morning");   // 4 times (i =1,2,3,4)
    $display ("Keep Shining");
    $display ("------------");
  end 
end 
endmodule 

