// and gate design file
// module defination for and gate with interface instanciation
module and_gate(and_intr.design_andg inf);
  
// assign the output using continuous assignment
  assign inf.output_r = (inf.input_p) & (inf.input_q);

endmodule : and_gate
