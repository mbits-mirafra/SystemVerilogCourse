module AND_Gate_tb;
  //declared variable to drive values from test to dut
  reg A;
  reg B;
  reg clk;
  wire Y;
  
  // Instantiating an AND Gate module
  AND_Gate inst(.A(A), .B(B), .Y(Y), .clk(clk));
  
  //generating clock
  always #5 clk = ~clk;

  initial begin
    //Monitoring values of A, B, and Y whenever they change
    $monitor ("\nA=%0b B=%0b Y=%0b", A, B, Y);
    // Initialize signals at time 0
    clk<=0;
    A<=0;
    B<=0;

    // Apply test cases every 10 time units
    #10
    A<=0;
    B<=1;
    
    #10
    A<=1;
    B<=0;
    
    #10
    A<=1;
    B<=1;
  
    // Wait for 15 time units before terminating the simulation
    #15;
    // End the simulation
    $finish;
  end
  
  // Define a sequence named 'seq'
  sequence seq;
    // The sequence triggers when A and B are both 1 at the rising edge of clk
    @(posedge clk) (A==1 && B==1);
  endsequence
  
  // Define a property named 'ppt' that uses the 'seq' sequence
  property ppt;
    // Property holds true when the sequence 'seq' is satisfied
    seq;
  endproperty

  // Assertion check using the 'ppt' property
  assert property (ppt) 
    $display(" %0t, A=1 and B=1, assertion success",$time); // If assertion passes, print success message
  else 
    $display("%0t, A=%0b and B=%0b,assertion failure", $time,A,B); // If assertion faild, print failure message

  // Initial block to generate waveform dump for simulation
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars();
  end

endmodule
