module formal_argument;
  bit clk,a,b,c,d;
  
  //generating clock
  always #5 clk = ~clk;
  
  //declare Logical Relationship seq with argument as variables
  sequence notype_seq (X,Y);
    X && Y;
  endsequence
  
  //declare Logical Relationship seq with argument as variable with datatype
  sequence withtype_seq (bit X, bit Y);
    X && Y;
  endsequence
  
  //property includes a and sequences using overlapped implication operator
  //declared property with arguments
  property a_b_notype_prop(a,b);
    // Property holds true when the a aseerted and same clock sequence is satisfied
    @ (posedge clk)
    a |-> notype_seq(a,b);
  endproperty
  
  //property includes a and sequences using overlapped implication operator
  //declared property with arguments using datatype
  property c_d_type_prop(bit c, bit d);
    // Property holds true when the c aseerted and same clock sequence is satisfied
    @ (posedge clk)
    c |-> withtype_seq(c,d);
  endproperty
  
  //check the condition inside the property and asserting property by passing a and b
  a_b_notype_assert : assert property (a_b_notype_prop(a,b))
                        $info("assertion passed");
                      else
                        $error("assertion failed");

  //check the condition inside the property and asserting property by passing c and d
  c_d_type_assert : assert property (c_d_type_prop(c,d))
                      $info("assertion passed");
                    else
                      $error("assertion failed");

  initial begin
    // Initialize signals at time 0
    a=0; b=0;
    c=0; d=0;
    // Apply test cases every 10 time units
    #15;
    a=1; b=0;
    c=0; d=1;
    #10;
    a=1; b=1;
    c=1; d=1;
    #10;
    a=1; b=0;
    c=1; d=1;
    #10;
    a=1; b=1;
    c=1; d=0;
    // Wait for 20 time units before terminating the simulation
    #20; 
    // End the simulation
    $finish;
  end

  // Initial block to generate waveform dump for simulation
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars();
  end
endmodule
