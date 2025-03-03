module nested_loop;
  initial begin
    $display("\t ----nested loop output ---\n");  
    // Display message indicating the start of nested loop execution

    // Calling the task 'nes' which contains the nested loop logic
    nes();
  end

  task nes();
      // Outer loop iterates from 1 to 3
      for (int i=1; i<=3; i++) 
      begin
        // Inner loop iterates from 1 to 3 for each iteration of the outer loop
        for (int j=1; j<=3; j++) 
        begin
          // If i equals 2, the 'disable nes' statement is executed
          // This terminates the execution of the entire task and exits immediately
          if (i == 2) 
          begin
            disable nes;  // Disables the execution of the entire task
          end
          
          $display("\t i= %0d , j= %0d ", i, j);  
          // Displaying values of 'i' and 'j' in the current iteration
        end
      end
  endtask
endmodule:nested_loop

