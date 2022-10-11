module CLI_valargs;
bit x;
int y;
string message;
initial begin:BEGIN_I
  x=$value$plusargs("msg=%s",message);
  $display("$value$plusargs used above returns %0d",x);
  $display(message);
  void'($value$plusargs("value=%d",y));
  y+=1;
  $display("Incremeneted value of y:%0d",y);
end:BEGIN_I

endmodule
