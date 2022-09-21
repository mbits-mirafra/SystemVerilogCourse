// testbench file for and gate design
// module defination for testbench with interface instanciation
module tb(and_intr.tb_andg inf);

initial begin
  $display("// and gate output using modports\n");
  $monitor("input_p=%0b\t input_q=%b\t output_r=%b",inf.input_p,inf.input_q,inf.output_r);
  inf.input_p = 0; inf.input_q = 0; 
  #1;
  inf.input_p = 1; inf.input_q = 0; 
  #1;
  inf.input_p = 0; inf.input_q = 1;     
  #1;
  inf.input_p = 1; inf.input_q = 1; 

end
endmodule : tb
