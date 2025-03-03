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

  // Always block triggered on the rising edge of the clock
  always @(posedge clk) begin 
    // Assertion checks for all possible values of A and B
    assert (A==0 && B==0) $display("%0t, A=0 and B=0, assertion failed\n",$time);
    else assert (A==0 && B==1) $display("%0t, A=0 and B=1, assertion failed\n",$time);
    else assert (A==1 && B==0) $display("%0t, A=1 and B=0, assertion failed\n",$time);
    else assert (A==1 && B==1) $display("%0t, A=1 and B=1,assertion Success\n",$time);
    else $display("%0t fail\n",$time);
  end
  // Initial block to generate waveform dump for simulation
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars();
  end
endmodule 
