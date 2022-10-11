module CLI_testargs;
bit x;
initial begin:BEGIN_I
  x=$test$plusargs("START");
  $display("$test$plusargs returns %d",x);
  if(x)
    $display("Start process");
  else
    $display("exit");
end:BEGIN_I
endmodule
