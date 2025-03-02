module overlapped_assertion;
  //declared variable to generate diffrents values
  bit clk,a,b,valid;
  
  //clock generation
  always #5 clk = ~clk;
  
  //generating valid, a and b
  initial begin
    valid=1;
    a=1; b=1;
    #15;
    a=1; b=0;
    #10;
    b=1;
    #12;
    b=0;
    #10;
    a=0; b=1;
    valid=0;
    #15;
    a=1; b=0;
    // Wait for 100 time units before terminating the simulation
    #100;
    // End the simulation
    $finish;
  end
  
  //property includes valid and sequence using overlapped implication operator
  property p;
    // Property holds true when the valid aseerted and same clock sequence(a ##3 b) is satisfied
    @(posedge clk) valid |-> (a ##3 b);
  endproperty
  
  //calling assert property
  a_1: assert property(p)
         $info("pass");
       else
         $info("fail");

  // Initial block to generate waveform dump for simulation
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars();
  end  
endmodule
