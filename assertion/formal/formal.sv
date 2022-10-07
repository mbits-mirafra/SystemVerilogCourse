//This module include formal argument inside a sequence
module formal_argument;
bit clk, q, r, en;
always #2 clk = ~clk;

//formal sequence
sequence seq(en);
  (q | r) & en;
endsequence

//property block
property prop(en);
  @(posedge clk) seq(en);
endproperty

//checking conditions
logical_exp: assert property(prop(en)) $info("assertion passed"); else $error("assertion failed");

//input conditions
initial begin
   q = 0;
   r = 0;
   #4 q = 1;
   #4 r = 1;
   #6 q = 0;
   #6 r = 0;
   en = 1;
   #10 q = 1;
   #20 r = 1;
   #20; $finish;
   end

 endmodule    
