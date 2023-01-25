class cover_group;
  rand bit [2:0]a;
  rand bit [1:0]b;
endclass
cover_group c=new();
covergroup cgrp;
  c1: coverpoint c.a;
  c2: coverpoint c.b;
endgroup

module outside;
cgrp cg=new();
initial begin
  repeat (5)begin
void'(c.randomize());
cg.sample();

$display("a =%d b=%d; coverage %%= %0.2f",c.a,c.b,cg.get_inst_coverage());

  end
$display("%f",cg.get_coverage());
end
endmodule
