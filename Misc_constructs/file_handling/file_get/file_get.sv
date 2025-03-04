//-------------------------------------------------------
//$fgets:reads the single line fo the file.
//$fgetc:Reads the character(byte) in the file.
//$ungetc:Inserts the specified character.
//-------------------------------------------------------
module f_get;
  //declare variables
  int c;
  int f;
  string line;
  
  int dummy;

  initial begin: BEGIN_I
    //open file in write mode
    f=$fopen("file","w");
     
    //displays the contents into the file.
    $fdisplay(f,"sv course");
    $fdisplay(f,"filehandling");
     
    //close file
    $fclose(f);
    //open file in read mode
    f=$fopen("file","r");
    $display("");
    
    //$fgetc will read single character
    c = $fgetc(f);
    $display("reading one character : %0s",c);

    //$ungetc insert the character in the file
    dummy = $ungetc(c,f);
    $display("character insert : %0s",c);

    //$fgets will read single line
    dummy = $fgets(line,f);
    $display("line read : %0s",line);
    //close file 
    $fclose(f);
  end: BEGIN_I
endmodule:f_get

