module assertion_ex;
  //declared variable to generate diffrents values
  bit clk,d,k;
  
  //generating clock
  always #5 clk = ~clk;
  
  //generating d and k
  initial begin 
    d=1;
    #57 k=1;
    #10 d=0;
    #15 k=0;
    #10 d=1;
    #10 k=0;
    #10 d=1;
    #10 k=1;
    // Wait for 200 time units before terminating the simulation
    #200;
    // End the simulation
    $finish;
  end

  //declare sequence 1
  sequence seq_1;
    //at posedge checking d high
    @(posedge clk)
    d;
  endsequence

  //declare sequence 2
  sequence seq_2;
    //after posedge checking k high after 4 clock
    @(posedge clk)
    ##4 k;
  endsequence
  
  //property includes seq_1 endeed and after ##4 delay it will start to check seq_2
  property p;
    // Property holds true when the seq_1 true and 
    // after 4 clock cycle seq_2 start and after 4 seq_2 true    
    @(posedge clk) seq_1 |-> ##4 seq_2;
  endproperty
  
  //calling assert property
  a_1: assert property(p)
         $info("passed");
       else
         $info("failed");

  // Initial block to generate waveform dump for simulation
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars();
  end
endmodule:assertion_ex
