module DUT();
  reg a = 0;
  
  initial begin
    a <= 1;
  end

endmodule

module TB_using_Module();

  initial begin
    $display("Module_based_TB : a = %b", DUT.a);
  end

endmodule

program TB_using_Program();
  
  initial begin
    $display("Program_based_TB : a = %b", DUT.a);
  end

endprogram
