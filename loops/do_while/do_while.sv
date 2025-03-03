module do_while;
  // declaring variable of int type and assigning value to it
  int apple = 1;
  initial begin 
    // display before do while loop
    $display("------do while output ---");
    // initialization of do while loop
    do
    begin
      // display inside loop
      $display("\t Value of apple = %0d", apple);
      // increamenting the value of variable 
      apple = apple +1;
    end
    // checking the condition for do while loop
    while(apple<6);
  end
endmodule :do_while
