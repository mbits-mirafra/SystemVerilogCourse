//while loop - working 
module while_basic;
  // declaring variable of type int and assigning value '1' to it
  int apple=1;
  initial begin
    // display before while loop start
    $display ("-----while loop output----");
    // while loop initialization with the condition
    while(apple<6)
    begin 
      // inside while loop display 
      $display ("\t Value of apple = %0d",apple);
      // increamenting variable value inside loop
      apple++;
    end 
  end 
endmodule 
