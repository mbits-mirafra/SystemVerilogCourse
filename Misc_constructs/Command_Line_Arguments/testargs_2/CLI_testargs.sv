module CLI_testargs2;
  //declare variable
  bit x;
  //-------------------------------------------------------------------
  // usage of $test$plusargs in parallel execution of initial blocks
  //-------------------------------------------------------------------
  initial begin:BEGIN_I
    //$test$plusargs it will get START instruction from command line 
    //and it will assign return value to x
    //then nextline code will run
    x = $test$plusargs("START");
    $display("@%0dns In first begin block",$time);
    $display("@%0dns $test$plusargs returns %d",$time,x);
    // if condition true it will print start process else exit with time
    if(x)
      $display("@%0dns Start process",$time);
    else
      $display("@%0dns exit",$time);
  end:BEGIN_I

  initial begin:BEGIN_II
    //$test$plusargs it will get START instruction from command line 
    //and it will assign return value to x
    //then nextline code will run
    x = $test$plusargs("START");
    $display("@%0dns In second begin block",$time);
    $display("@%0dns $test$plusargs returns %d",$time,x);
    // if condition true it will print start process else exit with time
    if(x)
      $display("@%0dns Start process",$time);
    else
      $display("@%0dns exit",$time);
  end:BEGIN_II

endmodule
