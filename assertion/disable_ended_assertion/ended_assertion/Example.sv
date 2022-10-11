module assertion_ex;
bit clk,d,k;

always #5 clk = ~clk; //clock generation

//generating 'a'
initial 
  begin 
  d=1;
  #57  k=1;
  #10 d=0;
  #15 k=0;
  #10 d=1;
  #10 k=0;
  #10 d=1;
  #10 k=1;
  #200;
  $finish;
  end
//sequence 1
sequence seq_1;
  @(posedge clk)
  d;
endsequence
//sequence 2
sequence seq_2;
  @(posedge clk)
  ##4 k;
endsequence

property p;
  @(posedge clk) seq_1.ended |-> ##4 seq_2.ended;
endproperty

a_1: assert property(p)$info("passed");
else $info("failed");

initial 
  begin
  $dumpfile("waveform.vcd");
  $dumpvars();
  end
endmodule:assertion_ex
