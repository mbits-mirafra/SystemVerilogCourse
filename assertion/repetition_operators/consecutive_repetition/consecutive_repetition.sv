module consecutive_repetition;
  //declared variable to generate diffrents values
  bit clk,a,b;
  
  //clock generation
  always #5 clk = ~clk; 
  
  //generating a and b
  initial begin
    a=0; b=0;
    #15 a=1; b=0;  //15
    #10 a=0; b=1;  //25
    #10 a=0; b=1;  //35
    #10 a=0; b=1;  //45
    #10 a=1; b=1;  //55
    #10 a=0; b=1;  //65
    #10 a=0; b=1;  //75
    #10 a=0; b=0;  //85
    #10 a=1; b=0;  //95
    #10 a=0; b=0;  //105
    #10 a=1; b=1;  //115
    #10 a=0; b=1;  //125
    #10 a=0; b=1;  //135
    #10 a=0; b=0;  //145
    #10 a=0; b=0;  //155
    // Wait for 10 time units before terminating the simulation
    #10;
    // End the simulation
    $finish;
  end
  
  //property includes a and b[*3] using overlapped implication operator
  property p;
    // Property holds true when the a aseerted then b assert 3 consecutive clock
    @(posedge clk) a |-> ##1 b[*3];
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
