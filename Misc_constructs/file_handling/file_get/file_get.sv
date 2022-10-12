//-------------------------------------------------------
//$fgets:reads the single line fo the file.
//$fgetc:Reads the character(byte) in the file.
//$ungetc:Inserts the specified character.
//-------------------------------------------------------
module f_get;
 int c;
 int f;
 string line;
  
 int dummy;

   initial begin
//write operation
     f=$fopen("file","w");
     
     $fdisplay(f,"sv course");
     $fdisplay(f,"filehandling");
     
     $fclose(f);
//read operation
     f=$fopen("file","r");
     $display("");

     c = $fgetc(f);
     $display("reading one character : %0s",c);

     dummy = $ungetc(c,f);
     $display("character insert : %0s",c);

     dummy = $fgets(line,f);
     $display("line read : %0s",line);
     
     $fclose(f);
    end
endmodule

