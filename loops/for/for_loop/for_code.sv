//--------------------------------------------------------------------------------------------
// Syntax : 
//      for([initialization]; <condition>; [modifier])
//        begin
//           multiple statements;
//        end
//--------------------------------------------------------------------------------------------

module for_loop;

  initial 
  begin

    $display("\t ----for loop output ---\n");

    for (int i=1;i<=5;i++)
    begin
      $display("\t Iteration %0d ",i);
    end
    $display("\n\t ----out of loop----");
  end

endmodule:for_loop
