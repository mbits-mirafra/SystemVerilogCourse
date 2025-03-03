//testbench for up counter
module upcounter_testbench(count_if intf);
  initial begin 
    $display("\n // Parameterised interface example");
 
    //used to monitor the count values
    $monitor("\ncount=%0d",intf.counter);
    intf.clk=0;
    //generation clock
    forever #5 intf.clk = ~intf.clk;
  end

  initial begin
    //generation reset
    intf.rst=1;
    #20;
    intf.rst=0;
    // Wait for 300 time units before terminating the simulation
    #300;
    // End the simulation
    $finish;
  end

endmodule:upcounter_testbench
