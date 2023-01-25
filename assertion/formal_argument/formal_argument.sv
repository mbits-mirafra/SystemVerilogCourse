module formal_argument;
bit clk,a,b,c,d;

always #5 clk = ~clk;

sequence notype_seq (X,Y);
  X && Y;
endsequence

sequence withtype_seq (bit X, bit Y);
  X && Y;
endsequence

property a_b_notype_prop(a,b);
  @ (posedge clk)
  a |-> notype_seq(a,b);
endproperty

property c_d_type_prop(bit c, bit d);
  @ (posedge clk)
  c |-> withtype_seq(c,d);
endproperty

a_b_notype_assert : assert property (a_b_notype_prop(a,b))
$info("assertion passed");
else
  $error("assertion failed");
  c_d_type_assert   : assert property (c_d_type_prop(c,d))
  $info("assertion passed");
  else
    $error("assertion failed");

    initial begin
      a=0; b=0;
      c=0; d=0;
      #15 a=1; b=0;
      c=0; d=1;
      #10 a=1; b=1;
      c=1; d=1;
      #10 a=1; b=0;
      c=1; d=1;
      #10 a=1; b=1;
      c=1; d=0;
      #20;
      $finish;
    end

    initial begin
      $dumpfile("waveform.vcd");
      $dumpvars();
    end
    endmodule
