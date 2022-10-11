module CLI_testargs2;
bit x;
initial begin:BEGIN_I
  x=$test$plusargs("START");
  $display("@%0dns In first begin block",$time);
  $display("@%0dns $test$plusargs returns %d",$time,x);
  if(x)
    $display("@%0dns Start process",$time);
  else
    $display("@%0dns exit",$time);
end:BEGIN_I

initial begin:BEGIN_II
  x=$test$plusargs("START");
  $display("@%0dns In second begin block",$time);
  $display("@%0dns $test$plusargs returns %d",$time,x);
  if(x)
    $display("@%0dns Start process",$time);
  else
    $display("@%0dns exit",$time);
end:BEGIN_II

endmodule
