// interface defination for and gate
interface and_intr;
  //input and output signals declaration for design
  logic p,q;
  logic r;

  // modport declaration for design file
  modport DUT_MP(input p,input q,output r);
  
  // modport declaration for testbench file
  modport TB_MP(output p,output q,input r);

endinterface : and_intr
