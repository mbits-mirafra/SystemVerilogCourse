//declaring global task which is outside module
task mul(input int var1,var2,output int res);
  //giving delay and assigning value in res
  #1;
  res=var1*var2;
endtask

module task1();
  //declared variables with value
  int multiplicand=5;
  int multiplicator=6;
  int result;

  initial begin
    $display("\t ----output of global task----");
    //calling global task and passing arguments as variables
    mul(multiplicand,multiplicator,result);
    $display("\t @ %0t ns , %0d X %0d = %0d",$time,multiplicand,multiplicator,result);
  end
endmodule

module task2();
  int r; 
  initial begin
    #2;
    //calling global task and passing direct arguments as value 7, 8 and with variable r
    mul(7,8,r); 
    $display("\t @ %0t ns , 7 X 8 = %0d",$time,r);
  end
endmodule
