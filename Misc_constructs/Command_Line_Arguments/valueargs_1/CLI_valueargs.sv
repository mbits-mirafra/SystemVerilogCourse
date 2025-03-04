module CLI_valargs;
  //declare variables
  bit x;
  int y;
  string message;

  initial begin:BEGIN_I
    //$value$plusargs it will take an input value from user through command line 
    //which can be further used or modified in the code
    //return value assigning in to x
    x = $value$plusargs("msg=%s",message);
    $display("$value$plusargs used above returns %0d",x);
    //printing message which given through command line
    $display(message);

    //$value$plusargs it will take an input value from user through command line 
    //return value ignoring using void
    void'($value$plusargs("value=%d",y));
    //increament y = command line argument + 1
    y+=1;
    //printing y
    $display("Incremeneted value of y:%0d",y);
  end:BEGIN_I

endmodule
