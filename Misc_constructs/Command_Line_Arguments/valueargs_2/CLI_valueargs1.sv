module CLI_valargs1;
  bit x;
  string y;
  string s;
  int f,fd;
  string message;
  int dummy;

  initial begin
    x = $value$plusargs("msg=%s",message);
    $display("$value$plusargs used above returns %0d",x);
    $display(message);
    void'($value$plusargs("file=%s",y));
    
    fd=$fopen(y,"r");
    dummy = $fgets(s,fd);
    $display(s);
    $fclose(fd);
  
    fd=$fopen(y,"a");
    $fdisplay(fd,"Hurray!");
    $fclose(fd);
  end

endmodule
