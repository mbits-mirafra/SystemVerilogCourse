//module AND_gate_tb;
module AND_Gate;
reg A;
reg B;
reg clk;
wire Y;
reg rst;

//Design instantiation
andgate inst(.A(A), .B(B), .Y(Y), .clk(clk), .rst(rst));

  always #5 clk = ~clk;
  initial
  begin
  clk<=1;
  A<=0;
  B<=0;
  rst <=0;//reset is deasserted

  #10
  A<=0;
  B<=1;

  #10
  A<=1;
  B<=0;


  #10
  A<=0;
  B<=1;

  #10
  A<=1;
  B<=1;

   rst<=1; //reset is asserted

  #12
  A<=1;
  B<=1;

  #100 $finish;
  end
//-------------------------------------------------------
// Disable iff is used to disable the property when the
// reset is active. Assertion output is disable whether it
// failure or pass.It is used when we don't want to check 
// some conditions
//-------------------------------------------------------
property p;
  @(posedge clk) disable iff(rst)//disable if reset is assereted
    A&&B;
  endproperty

  assert property (p) $display("time=%0t,A=%0b and B=%0b, assertion success\n",$time,A,B);
  else $display("time=%0t, A=%0b and B=%0b,assertion failure\n", $time,A,B);
initial
begin
  $dumpfile("waveform.vcd");
  $dumpvars();
end
endmodule:AND_Gate
