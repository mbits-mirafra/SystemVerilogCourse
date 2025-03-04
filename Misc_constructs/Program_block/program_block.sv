// declare DUT module
module DUT();
  // Declare variable a using register and initialize it to 0
  reg a = 0;
  
  initial begin
    // Non-blocking assignment a is scheduled to be updated to 1
    a <= 1;
  end
endmodule

//Declare Testbench using a module
module TB_using_Module();
  initial begin
    // Printing the value of a from DUT
    // This will work at active region
    $display("Module_based_TB : a = %b", DUT.a);
  end
endmodule

//Declare Testbench using a program block
program TB_using_Program();
  initial begin
    // Printing the value of a from DUT
    // This will work at re-active region
    $display("Program_based_TB : a = %b", DUT.a);
  end
endprogram
