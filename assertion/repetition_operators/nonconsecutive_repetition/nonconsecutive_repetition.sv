module nonconsecutive_repetition;
  //declared variable to generate diffrents values
  bit clk,a,b,c;
  
  //clock generation
  always #5 clk = ~clk; 
  
  //generating a, b and c
  initial begin
    a=0; b=0;
    #15 a=1; b=0; c=0; //15
    #10 a=0; b=1; c=0; //25
    #10 a=0; b=1; c=0; //35
    #10 a=0; b=0; c=0; //45
    #10 a=0; b=1; c=0; //55
    #10 a=0; b=0; c=0; //65
    #10 a=0; b=0; c=1; //75
    #10 a=0; b=0; c=0; //85
    #10 a=1; b=1; c=0; //95
    #10 a=0; b=0; c=0; //105
    #10 a=0; b=1; c=0; //115
    #10 a=0; b=0; c=0; //125
    #10 a=0; b=1; c=0; //135
    #10 a=0; b=0; c=1; //145
    #10 a=0; b=0; c=0; //155
    // Wait for 10 time units before terminating the simulation
    #10;
    // End the simulation
    $finish;
  end
  
  //property includes a and b[=3] ##1 c using overlapped implication operator
  property p;
    // Property holds true when the a aseerted then b asserted 3 time at any clock then next any clock c assert
    @(posedge clk) a |-> b[=3] ##1 c;
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
