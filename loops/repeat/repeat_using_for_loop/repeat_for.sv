// Implementation of repeat loop using the for loop.

module repeat_for;
  initial begin
    // for loop initialization and repeat statements inside loop for four times
    for (int i = 1;i<=4;i++)begin
      // inside for display contents
      $display ("Good morning");   
      $display ("Keep Shining");
      $display ("------------");
    end 
  end 
endmodule 

