class pack;
 rand  bit a;
 rand  bit b;

  covergroup cg;
      c1: coverpoint a;
      c2: coverpoint b;
      c3: cross c1,c2; 
  endgroup
  cg = new();
endclass
pack p = new();

module cvgrp_cross;
  initial begin
    repeat(5) begin
    void'(p.randomize);
    p.cg.sample();
    $display ("a=%d ; b=%d ; coverage %%=%.2f",p.a,p.b,p.cg.get_inst_coverage());
    end
    //$display("%0.2f",p.cg.get_coverage());
  end
endmodule
