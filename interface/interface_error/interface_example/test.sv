//testbench for and gate
module tb(and_if inf);

initial begin
  $display("\n// and gate output");
  $monitor("\ninput_a=%b\t input_b=%b\t output_y=%b",inf.input_a,inf.input_b,inf.output_y);
  inf.output_y=0;
  inf.input_a = 0; inf.input_b = 0; 
  #1;
  inf.input_a = 1; inf.input_b = 0; 
  #1;
  inf.input_a = 0; inf.input_b = 1;     
  #1;
  inf.input_a = 1; inf.input_b = 1; 
end

endmodule:tb


