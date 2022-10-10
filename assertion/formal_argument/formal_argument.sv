
module formal_argument;
logic clk = 0;
logic req,gnt;
logic c,d;

sequence notype_seq (X, Y);
  (~X & Y)  ##1  (~X & ~Y);
endsequence

sequence withtype_seq (logic X, logic Y);
  (~X & Y)  ##1  (~X & ~Y);
endsequence

property req_gnt_notype_prop(P,Q);
  @ (posedge clk)
  req |=> notype_seq(P,Q);
endproperty

property c_d_type_prop(logic P, logic Q);
  @ (posedge clk)
  c |=> withtype_seq(P,Q);
endproperty

req_gnt_notype_assert : assert property (req_gnt_notype_prop(req,gnt));
c_d_type_assert       : assert property (c_d_type_prop(c,d));

always @ (posedge clk)
  gnt <= req;

  always @ (posedge clk)
    d  <= c;

    always  #3  clk ++;
    initial begin
      // Make the assertion pass
      #10 @ (posedge clk) req  <= 1;
      @ (posedge clk) req <= 0;
      // Make the assertion fail
      #10 @ (posedge clk) req  <= 1;
      repeat (2) @ (posedge clk);
      req <= 0;




      // Make the assertion pass
      #10  @ (posedge clk) c  <= 1;
      @ (posedge clk) c <= 0;
      // Make the assertion fail
      #10  @ (posedge clk) c  <= 1;
      repeat (2) @ (posedge clk);
      c <= 0;
      #50  $finish;
    end

 initial begin
   $dumpfile
   ("waveform.vcd");
   $dumpvars();
 end

    endmodule
