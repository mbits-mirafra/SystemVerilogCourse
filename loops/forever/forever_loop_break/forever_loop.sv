//--------------------------------------------------------------------------------------------
// Syntax : forever
//          begin
//          statement1;
//          statement2;
//          .
//          .
//          statementN;
//          end
//
// As the name expressing this loop executes 
// through out the execution until unless forcefully 
// exits,we can get out of it by using $finish or break
//--------------------------------------------------------------------------------------------
module forever_loop;
  int a; 
  initial 
  begin 
    $display("\t ----forever loop----");

    forever
    begin
      $display("\t @ %0d ns Iteration %0d",$time,a);
      a++;
      #4;
      if(a>8)
        break;

    end
    $display("\n\t@ %0d ns Stopped using break",$time);
  end

endmodule:forever_loop 
