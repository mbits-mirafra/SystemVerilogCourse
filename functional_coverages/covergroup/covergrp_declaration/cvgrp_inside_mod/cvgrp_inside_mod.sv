class pack;
rand bit [1:0]a;
rand bit [2:0]b;
endclass
pack p =new;

module cvgrp_inside_mod;
covergroup cgrp ;
  c1: coverpoint p.a; 
  c2: coverpoint p.b ;
endgroup 
cgrp c;
initial begin
c=new;
repeat (5) begin
  void'(p.randomize);
  c.sample();
$display ("a=%d ; b=%d ; coverage %%=%.2f%%",p.a,p.b,c.get_inst_coverage());
end
$finish;
end
endmodule

