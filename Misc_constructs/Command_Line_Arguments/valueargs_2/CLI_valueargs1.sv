module CLI_valargs1;
  //declare variables
  bit x;
  string y;
  string s;
  int f,fd;
  string message;
  int dummy;

  initial begin
    //$value$plusargs it will take an input value from user through command line 
    //which can be further used or modified in the code
    //return value assigning in to x
    x = $value$plusargs("msg=%s",message);
    $display("$value$plusargs used above returns %0d",x);
    //printing message which given through command line
    $display(message);
    //$value$plusargs it will take an input value from user through command line 
    //return value ignoring using void
    void'($value$plusargs("file=%s",y));
    
    //opening file in read mode
    fd=$fopen(y,"r");
    //$fgets will read single line
    dummy = $fgets(s,fd);
    //printing s
    $display(s);
    //close file
    $fclose(fd);
  
    //open file in append mode
    fd=$fopen(y,"a");
    //displays the contents into the file.
    $fdisplay(fd,"Hurray!");
    //close file
    $fclose(fd);
  end

endmodule
