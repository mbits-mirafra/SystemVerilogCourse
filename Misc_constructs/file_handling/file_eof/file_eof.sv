//-------------------------------------------------------
//$rewind:can be used to change the current read or write
//position within a file
//$feof:It returns true when end of the file has reached.
//-------------------------------------------------------
module file_eof;
int fd;
string str;
int dummy;

  initial begin

  //open the file in the write mode
    fd = $fopen ("hihihi.sv", "w+");

  //displays the contents into the file
    $fdisplay(fd,"teams");

    $fdisplay(fd,"c");

    dummy = $rewind(fd);

  //close the file
    $fclose(fd);

  //open the file in read mode
    fd = $fopen("hihihi.sv","r");
    dummy = $feof(fd);
    dummy = $fgets(str,fd);
    $display("line:%0s",str);

    $fclose(fd);

  end

endmodule
