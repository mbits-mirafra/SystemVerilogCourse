class samp;
rand  bit [2:0]a;
rand  bit [3:0] b;
endclass
samp s;

covergroup cgrp;
  c1: coverpoint s.a{bins b1 = {1};
                     bins b2 ={3};//}
                   //option.weight=4;}//
                   option.at_least=2;}
  c2: coverpoint s.a{option.weight=2;}
  c3: coverpoint s.b{option.auto_bin_max=2;}
endgroup
cgrp c; 
module options;
initial begin
s=new;
c = new();
repeat (5)begin
  void'(s.randomize());
  c.sample();
  $display("a=%d ; b=%d ; coverage %%= %.2f",s.a,s.b,c.get_inst_coverage());
  $display("coverpoint c1 coverage%% = %.2f%%",c.c1.get_coverage());
  $display("coverpoint c2 coverage%% = %.2f%%",c.c2.get_coverage());
  $display("coverpoint c3 coverage%% = %.2f%%",c.c3.get_coverage());
  $display("-----------------------------------------------------");

end
end
endmodule

