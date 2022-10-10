`include "design.sv"
module AND_Gate_tb;
reg A;
reg B;
reg clk;
wire Y;

AND_Gate inst(.A(A), .B(B), .Y(Y), .clk(clk));
always #5 clk = ~clk;
initial begin
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


  always @(posedge clk) 
  begin 
  assert (A==0 && B==0) $display("%0t, A=0 and B=0, assertion failed\n",$time);
  
  else assert (A==0 && B==1) $display("%0t, A=0 and B=1, assertion failed\n",$time);
  
  else assert (A==1 && B==0) $display("%0t, A=1 and B=0, assertion failed\n",$time);
  
  else assert (A==1 && B==1) $display("%0t, A=1 and B=1,assertion Success\n",$time);
  
  else $display("%0t fail\n",$time);
  end
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars();
  end
endmodule 
