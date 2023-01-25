module cvgrp_iff;
bit [2:0]a;
bit [1:0]b;
bit clk;
always #5 clk=~clk;
covergroup cvgrp @ (posedge clk);
  c1: coverpoint a iff(b==2) {bins b1 = {4};
                               bins b2 = {5};}
endgroup 
cvgrp cg=new;

initial begin
for(int i=0;i<8;i++)begin
     a=$random;
     b=$random;
   @ (posedge clk);
      if (b==2)
         $write("if 'b' is 2 then coverpoints are executed ; \t");
      $display("a=%d ; b=%d ; coverage %%= %.2f",a,b,cg.get_inst_coverage());
end
$finish;
end
endmodule
