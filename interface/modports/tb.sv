// testbench file for and gate design
// module defination for testbench with interface instanciation
module tb(and_intr inf);

  initial
   begin
    $display("// and gate output using modports\n");
    repeat(5)
      begin
        inf.TB_MP.p = $random;
        #1;
        inf.TB_MP.q = $random;
        #1;
        $display("input_p=%b\t input_q=%b\t output_r=%b",inf.TB_MP.p,inf.TB_MP.q,inf.TB_MP.r);
      end
  end

endmodule : tb
