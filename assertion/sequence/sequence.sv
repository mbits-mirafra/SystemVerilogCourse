// This program includes seqA shows timing relationship, 
// seqB shows logical relationship
// seqA and seqB Shows multiple sequences
module seq1;
bit clk, x, y;
always #2 clk = ~clk;

//Timing Relationship
sequence seqA;
  x ##5 y ;
endsequence

//Logical Relationship
sequence seqB;
  x && y;
endsequence

//property includes two sequences using overlapped implication operator
property prop;
  @(posedge clk) seqA |-> seqB;
endproperty

//check the condition inside the property 
time_a: assert property(prop) $info("assertion passed"); else $error("assertion failed");

//Input conditions
initial begin
  x =  0;
  y  = 0;
  #4 x = 1;
  y = 1;
  #6 x = 0;
  #6 y = 0;
  #10 x = 1;
  #20 y = 1;
  #20; $finish;
end

endmodule    
