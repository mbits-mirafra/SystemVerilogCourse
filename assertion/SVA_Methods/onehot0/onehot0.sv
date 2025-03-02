module onehot0;  
  //declared variable to generate diffrents values
  bit clk,a;
  logic [4:0] b;  
  
  //clock generation
  always #5 clk = ~clk;   
  
  //generating a and b
  initial begin
    //generating b values as 5 bits because this method bit by bit it will chek
    a=0; b=5'b00000;
    #15 a=1; b=5'b00100;  //15
    #10 a=0; b=5'b01000;  //25
    #10 a=1; b=5'b01000;  //35
    #10 a=0; b=5'b01000;  //45
    #10 a=1; b=5'b10000;  //55
    #10 a=0; b=5'b10000;  //65
    #10 a=1; b=5'b11000;  //75
    #10 a=0; b=5'b01100;  //85
    #10 a=1; b=5'b01100;  //95
    #10 a=0; b=5'b01000;  //105
    #10 a=1; b=5'b11100;  //115
    #10 a=0; b=5'b01000;  //125
    #10 a=1; b=5'b00000;  //135
    #10 a=1; b=5'b00100;  //145
    // Wait for 10 time units before terminating the simulation
    #10;
    // End the simulation
    $finish;
  end
  
  //property includes a and $onehot0(b) using overlapped implication operator
  property p;
    // Property holds true when the a aseerted and same clock one bit of b can be high
    // or none of bits can be high
    @(posedge clk) a |-> $onehot0(b);  
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
