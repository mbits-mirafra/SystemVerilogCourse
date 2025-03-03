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
  // declare variable of int type
  int a; 
  initial begin 

    // display before forever loop start
    $display("\t ----forever loop----");

    // starting of forever loop
    forever begin
      $display("\t @ %0d ns Iteration %0d",$time,a);
      // increamenting value of a inside forever loop
      a++;
      #4;
      // checking condition of variable a using if loop
      if(a>8)
        // condition is satisfy then breaking the forever loop
        break;
    end
    // display after the forever loop
    $display("\n\t@ %0d ns Stopped using break",$time);
  end

endmodule:forever_loop 
