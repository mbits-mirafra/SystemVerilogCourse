//testbench for up counter
module upcounter_testbench(count_if intf);

  initial begin 
    $display("\n // Parameterised interface example");
    //used to monitor the count values
    $monitor("\ncount=%0d",intf.counter);
    intf.clk=0;
    forever #5 intf.clk=~intf.clk;
  end

  initial begin
    intf.rst=1;
    #20;
    intf.rst=0;
    #350 $finish;
  end

endmodule:upcounter_testbench
