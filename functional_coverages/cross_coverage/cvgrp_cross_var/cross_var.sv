
module cross_var;
 bit  a;
 bit  b;

 covergroup cvgrp;
     c1: coverpoint a;
     c2: coverpoint b;
     c3: cross a,b;
   endgroup
   cvgrp cg;
  initial begin
  cg =new();
    repeat(5) begin
    a=$random;
    b=$random;
    cg.sample();
    $display ("a=%d ; b=%d ; coverage %%=%.2f",a,b,cg.get_inst_coverage());
    end
    //$display("%0.2f",p.cg.get_coverage());
  end
endmodule
