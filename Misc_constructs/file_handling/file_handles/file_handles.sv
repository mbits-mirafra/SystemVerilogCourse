module file_handles;
  //declare variable using integer
  int f;

  initial begin: BEGIN_I
    //open file in write mode
    f=$fopen("file_handle","w");
  
    //displays the contents into the file.
    $fdisplay(f,"fileoperations");
    $fdisplay(f,"sv course");
  
    //close file in write mode
    $fclose(f);

  end: BEGIN_I

endmodule:file_handles
