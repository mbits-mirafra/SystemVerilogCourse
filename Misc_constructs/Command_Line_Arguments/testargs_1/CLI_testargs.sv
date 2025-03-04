module CLI_testargs;
  //declare variable
  bit x;
  initial begin:BEGIN_I
    //$test$plusargs it will get START instruction from command line 
    //and it will assign return value to x
    //then nextline code will run
    x = $test$plusargs("START");
    $display("$test$plusargs returns %d",x);
    // if condition true it will print start process else exit
    if(x)
      $display("Start process");
    else
      $display("exit");
  end:BEGIN_I
endmodule
