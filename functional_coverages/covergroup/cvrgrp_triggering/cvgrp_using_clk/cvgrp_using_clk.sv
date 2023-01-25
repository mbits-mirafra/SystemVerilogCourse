
module cvgrp_using_clk;
bit [2:0]a;
bit b;
bit clk;
always #5 clk=~clk;
covergroup cvgp @ (posedge clk);
  c1: coverpoint a;
  c2: coverpoint b;
endgroup 
cvgp cg=new;


initial begin
  repeat(5) begin
    @ (posedge clk);
    a=$random;
    b=$urandom;
    $display("a=%d ; b=%d ; coverage %%= %.2f",a,b,cg.get_inst_coverage());
  end
  $finish;
end
endmodule
