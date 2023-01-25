// and gate design file
// module defination for and gate with interface instanciation
module and_gate(and_intr inf);
  
// assign the output using continuous assignment
   assign inf.DUT_MP.r = (inf.DUT_MP.p) & (inf.DUT_MP.q);

endmodule : and_gate
