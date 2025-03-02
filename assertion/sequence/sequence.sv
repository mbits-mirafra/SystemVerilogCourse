//This program includes seqA shows timing relationship, 
// seqB shows logical relationship
// seqA and seqB Shows multiple sequences
module seq1;
  bit clk, x, y;
  //generating clock
  always #2 clk = ~clk;
  
  //declare Timing Relationship seqA
  sequence seqA;
    x ##5 y ;
  endsequence
  
  //declare Logical Relationship seqB
  sequence seqB;
    x && y;
  endsequence
  
  //property includes two sequences using overlapped implication operator
  property prop;
    // Property holds true when the sequence 'seqA and seqB' is satisfied
    @(posedge clk) seqA |-> seqB;
  endproperty

  //check the condition inside the property 
  time_a: assert property(prop) 
            $info("assertion passed"); 
          else 
            $error("assertion failed");
  
  //Input conditions
  initial begin
    // Initialize signals at time 0
    x =  0;
    y  = 0;

    // Apply test cases every 10 time units
    #4;
    x = 1;
    y = 1;
    #6;
    x = 0;
    #6;
    y = 0;
    #10;
    x = 1;
    #20;
    y = 1;
    // Wait for 20 time units before terminating the simulation
    #20; 
    // End the simulation
    $finish;
  end
  
  // Initial block to generate waveform dump for simulation
  initial begin                                                                                       
    $dumpfile                                                                                         
    ("waveform.vcd");                                                                                 
    $dumpvars();                                                                                      
  end                                                                                                 
endmodule 
