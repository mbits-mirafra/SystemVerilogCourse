//--------------------------------------------------------------------------------------------
// syntax : LHS (Variable) = RHS (Expression)
//
// This Blocking works in a serial manner until 
// the present line completed execution 
// then only it will move to next line
//--------------------------------------------------------------------------------------------
module blocking_swap();

  //-------------------------------------------------------
  // Declaring the variables
  //-------------------------------------------------------
  int Greater_number=5;
  int Lesser_number=2;
  int Temp_variable;
  
  //-------------------------------------------------------
  // Displaying the initial values of the numbers
  //-------------------------------------------------------
  initial
  begin
    $display("Inital : ");
    $display("Greater_number=%0d & Lesser_number=%0d",Greater_number,Lesser_number);
  end

  //-------------------------------------------------------
  // Swapping the variables without Temporary variable but won't possible 
  //-------------------------------------------------------
  initial
  begin
    $display("swapping with Temporary variable : ");
    Temp_variable=Greater_number;
    Greater_number=Lesser_number;
    Lesser_number=Temp_variable;
    $display("Greater_number=%0d & Lesser_number=%0d",Greater_number,Lesser_number);
  end
  
  //-------------------------------------------------------
  // swapping the variables with Temporary variable using blocking
  //-------------------------------------------------------
  initial
  begin
    $display("swapping without Temporary variable : ");
    Greater_number=Lesser_number;
    Lesser_number=Greater_number;
    $display("Greater_number=%0d & Lesser_number=%0d",Greater_number,Lesser_number);
  end

endmodule :blocking_swap

