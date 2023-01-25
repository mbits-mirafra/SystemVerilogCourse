class samp;
randc  bit [2:0]a;
randc bit b;
endclass
samp s;

covergroup cgrp;
  c1: coverpoint s.a;
  c2: coverpoint s.b;
endgroup
cgrp c; 
module cvgrp_start_stop;
int display=0;
initial begin
s=new;
c = new();
for(int i=0;i<5;i++)begin
  void'(s.randomize());
  c.sample();
      $display("a=%d ; b=%d ; coverage = %0.2f",s.a,s.b,c.get_inst_coverage()); 
      if (c.get_inst_coverage()>65)begin
    c.stop;
   // if(c.get_inst_coverage()==31.25)
     // c.start;
    if(display==0)
    $display("if coverage%% is greater than 65%%,stop executing covergroup");
display=1;
end
end
end
endmodule

