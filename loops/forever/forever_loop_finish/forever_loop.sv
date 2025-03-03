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
  // declaring variable a of type int
  int a; 
  // initial block start execution at 0 time
  initial begin 
    // display before forever loop
    $display("\t ----forever loop----");

    // forever loop start
    forever begin
      $display("\t @ %0d ns Iteration %0d",$time,a);
      // increamenting the value of a variable
      a++;
      #4;
    end
  end

  // initial block start execution at 0 time
  initial begin
    #20;
    // after 20 time units display time value and terminating the execution of forever loop
    $display("\n\t@ %0d ns Stopped using $finish",$time);
    $finish;
  end

endmodule:forever_loop 
