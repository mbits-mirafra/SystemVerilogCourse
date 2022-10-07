module cover_grp;
 bit [1:0]a;
 bit [1:0]b;
covergroup cgrp;
  c1: coverpoint a;
  c2: coverpoint b;
endgroup
cgrp cg =new();

initial begin
repeat (5)begin
  a=$random();
  b=$random();
  cg.sample();
  $display("a=%d ; b=%d ; coverage %%= %.2f",a,b,cg.get_inst_coverage());
end
$display("overall functional coverage%% = %.2f%%",cg.get_coverage());
end
endmodule

