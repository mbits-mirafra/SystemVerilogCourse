module AND_Gate_tb;
reg A;
reg B;
reg clk;
wire Y;


AND_Gate inst(.A(A), .B(B), .Y(Y), .clk(clk));

always #5 clk = ~clk;
initial
begin
  $monitor ("\nA=%0b B=%0b Y=%0b", A, B, Y);

  clk<=0;
  A<=0;
  B<=0;
  
  #10
  A<=0;
  B<=1;
  
  #10
  A<=1;
  B<=0;
  
  #10
  A<=1;
  B<=1;

  #15 $finish;
end

sequence seq;
  @(posedge clk) (A==1 && B==1);
endsequence

property ppt;
  seq;
endproperty

assert property (ppt) $display(" %0t, A=1 and B=1, assertion success",$time);
else $display("%0t, A=%0b and B=%0b,assertion failure", $time,A,B);

  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars();
  end

endmodule
