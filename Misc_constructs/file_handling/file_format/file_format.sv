//-------------------------------------------------------
//$sformatf:Adds the values to the existing values returns
//in string format.
//$sformat:Copies everything to the other variable in the 
//format of string.
//-------------------------------------------------------
module format;
 
 int a=9;
 int fd;
 string b="hii";
 string c;
  
  initial begin:BEGIN_I
  
    fd=$fopen("file","w");

    c = $sformatf("bhavana_%0d",a);
    $display("c=%0s",c);
  
    $sformat(b,"bhavana_%0d",a);
    $display("b=%0s",b);

    $fclose(fd);

  end:BEGIN_I

endmodule:format
