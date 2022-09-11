//--------------------------------------------------------------------------------------------
// syntax : LHS (Variable) <= RHS (Expression)
//
// This Non Blocking works in a parallel manner 
// all the lines which are written runs at a time parallely
//--------------------------------------------------------------------------------------------
module non_blocking_swap();

  //-------------------------------------------------------
  // Declaring the variables
  //-------------------------------------------------------
  int Greater_number=5;
  int Lesser_number=2;
  //int Temp_variable;
  
  //-------------------------------------------------------
  // Displaying the initial values of the numbers
  //-------------------------------------------------------
  initial
  begin
    $display("Inital : ");
    $display("Greater_number=%0d & Lesser_number=%0d",Greater_number,Lesser_number);
  end

  //-------------------------------------------------------
  // Swapping the variables Using Non-blocking
  //-------------------------------------------------------
  initial
  begin
    $display("swapping : ");
    Lesser_number<=Greater_number;
    Greater_number<=Lesser_number;
    $display("Display : Greater_number=%0d & Lesser_number=%0d",Greater_number,Lesser_number); 
    $monitor("Monitor : Greater_number=%0d & Lesser_number=%0d",Greater_number,Lesser_number);
  end
/*
  //-------------------------------------------------------
  // Explaining the user how regions work serially
  //-------------------------------------------------------
  initial 
  begin
    #5 $display(" \n \n In event scheduling semantics you can get how \n the process will work through different regions, \n but in general $display and the NBA(non-blocking assignments (RHS)) \n evualted in Active region and then next \n in NBA region NBA evaulated results will assigned to LHS and \n then in postponed region monitor will work so \n in display we can't get NBA output exactly \n but in monitor will get exact \n \n ");
  end
*/
endmodule : non_blocking_swap

