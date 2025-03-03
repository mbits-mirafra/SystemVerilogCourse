//--------------------------------------------------------------------------------------------
// Syntax : 
//      for([initialization]; <condition>; [modifier])
//        begin
//           multiple statements;
//        end
//--------------------------------------------------------------------------------------------

module for_loop;
  initial begin
    // Display a message before entering the for loop
    $display("\t ----for loop output ---\n");
    // 'for' loop: it will iterate from i = 1 to i = 5
    for (int i=1;i<=5;i++) begin
      // On each iteration, display the current iteration number
      $display("\t Iteration %0d ",i);
    end
    // Display a message after the for loop finishes
    $display("\n\t ----out of loop----");
  end
// End of module 'for_loop'
endmodule:for_loop
