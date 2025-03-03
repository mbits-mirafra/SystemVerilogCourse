module nested_for_loop;
  
  initial begin
    // display before for loop executes
    $display("\t ----Tables using nested for---");

    // for loop initialization which iterates from i=1 to i=2
    for (int i=1;i<=2;i++) begin
      // each iteration display iteration number
      $display("\n\t%0d Table:\n",i);
 // another for loop initialization inside for loop which iterates j=1 to j=10
      for(int j=1,k=0;j<=10;j++) begin
        // multiplying i and j values and assigning to k
        k=i*j;
        $display("\t %0d X %0d = %0d",i,j,k);
      end
    end
    // display after the for loop finishes
    $display("\n\t ----out of loop----");
  end

endmodule:nested_for_loop
