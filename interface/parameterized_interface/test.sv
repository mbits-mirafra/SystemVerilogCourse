//testbench for up counter
module upcounter_testbench(count_if inf);
  initial begin
    $display("\n // Parameterised interface example");
    //used to monitor the count values
    $monitor("\ncount=%0d",inf.counter);
    inf.clk=0;
    //generation clock
    forever #5 inf.clk=~inf.clk;
  end
  //generation reset
  initial begin
    inf.reset=1;
    #20;
    inf.reset=0;
    // Wait for 70 time units before terminating the simulation
    #70;
    // End the simulation
    $finish;
  end
endmodule:upcounter_testbench
