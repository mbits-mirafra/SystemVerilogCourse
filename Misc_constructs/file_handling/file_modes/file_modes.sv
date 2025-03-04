//-------------------------------------------------------
//Filemodes:
//we have different types of file modes ins sv like 
//read(r),write(w),append(a),write and read(w+/r+)
//-------------------------------------------------------
module file_modes;
  //declare variables
  int f;
  string line;
  int dummy;

  initial begin: BEGIN_I
    //open the file in write mode    
    f = $fopen("fileoperations","w");
    //displays the contents into the file.
    $fdisplay(f,"contents of file");
    $fdisplay(f,"sv course");
    //close file
    $fclose(f);

    //open the file in append mode
    f=$fopen("fileoperations","a");
    $fdisplay(f,"filehandling");
    //close file
    $fclose(f);

    //open the file in read mode
    f = $fopen ("fileoperations", "r");
    $display("");
    $display("output of 'r' mode");
    //$fgets will read single line
    dummy= $fgets(line, f);
    $display ("Line read : %s", line);
    //$fgets will read single line
    dummy = $fgets(line, f);
    $display ("Line read : %s", line);
    //Close the file in read mode
    $fclose(f);

    //open the file in 'w+' mode
    f = $fopen("fileoperations","w+");
    $fdisplay(f,"filemodes");
    //-------------------------------------------------------
    //$rewind is used to change current read or write position 
    //within the file
    //-------------------------------------------------------
    dummy= $rewind(f);
    //close file
    $fclose(f);

    //open the file in 'r+' mode
    f = $fopen("fileoperations","r+");
    $display("output of 'r+' mode");
    //$fgets will read single line
    dummy=  $fgets(line,f);
    $display("line read :%0s",line);
    $display("");
    //close file
    $fclose(f);
    
  end: BEGIN_I

endmodule:file_modes
