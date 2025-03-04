//-------------------------------------------------------
//$rewind:can be used to change the current read or write
//position within a file
//$feof:It returns true when end of the file has reached.
//-------------------------------------------------------
module file_eof;
  //declare variable
  int fd;
  string str;
  int dummy;

  initial begin: BEGIN_I
    //open the file in the write mode
    fd = $fopen ("hihihi.sv", "w+");

    //displays the contents into the file
    $fdisplay(fd,"teams");
    $fdisplay(fd,"c");

    //$rewind change the current read or write position within a file
    dummy = $rewind(fd);

    //close the file
    $fclose(fd);

    //open the file in read mode
    fd = $fopen("hihihi.sv","r");
    //$feof returns true when end of the file has reached
    dummy = $feof(fd);
    //$fgets will read single line
    dummy = $fgets(str,fd);
    $display("line:%0s",str);

    //close file
    $fclose(fd);

  end: BEGIN_I

endmodule:file_eof
