
class pack;
 rand  bit [1:0] a;
rand  bit [1:0] b;

covergroup cg;
 c1: coverpoint a;
 c2: coverpoint b;
endgroup
cg =new();
endclass

  pack p = new();

module cvgrp_inside_class;
  initial begin
    repeat(5) begin
    void'(p.randomize);
    p.cg.sample();
    $display ("a=%d ; b=%d ; coverage %%=%.2f",p.a,p.b,p.cg.get_inst_coverage());
    end
  end
endmodule
