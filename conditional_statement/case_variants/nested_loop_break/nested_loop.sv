
//--------------------------------------------------------------------------------------------
// Syntax : 
//      for([initialization]; <condition>; [modifier])
//        begin
//          for([initialization]; <condition>; [modifier])
//          begin
//           multiple statements;
//          end
//        end
//--------------------------------------------------------------------------------------------

module nested_loop;
  initial 
  begin
    $display("\t ----nested loop output ---\n");
    nes();
  end

  task nes();
      for (int i=1;i<=3;i++)
      begin
        for(int j=1;j<=3;j++)
        begin
          if(i==2)
          begin
            disable nes;
          end
          $display("\t i= %0d , j= %0d ",i,j);
        end
      end
    endtask
endmodule:nested_loop
