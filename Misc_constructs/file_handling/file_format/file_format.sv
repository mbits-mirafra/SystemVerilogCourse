//-------------------------------------------------------
//$sformatf:Adds the values to the existing values returns
//in string format.
//$sformat:Copies everything to the other variable in the 
//format of string.
//-------------------------------------------------------
module format;
  //declare variables
  int a=9;
  int fd;
  string b="hii";
  string c;
  
  initial begin:BEGIN_I
    //file open in write mode
    fd=$fopen("file","w");

    //$sformatf returns the updated content to a variable
    c = $sformatf("delta_%0d",a);
    //printing c
    $display("c=%0s",c);
  
    //$sformat update a variable with particular content
    //a to b
    $sformat(b,"delta_%0d",a);
    //printing b
    $display("b=%0s",b);

    //close file
    $fclose(fd);

  end:BEGIN_I

endmodule:format
