// interface defination for and gate
interface and_intr;
//input and output signals declaration for design
logic input_p,input_q;
logic output_r;

// modport declaration for design file
modport design_andg(input input_p,input input_q,output output_r);
  
// modport declaration for testbench file
 modport tb_andg(output input_p,output input_q,input output_r);

endinterface : and_intr
