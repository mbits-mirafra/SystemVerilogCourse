//creating top module
//Here the interface,testbench,design module are called.
module top();
  //interface module
  and_if inf();

  //design module instantiate
  and_gate a1(.input_a(inf.input_a),
              .input_b(inf.input_b),
              .output_y(inf.output_y)
             );

  //testbench
  tb t1(inf);
endmodule:top
