module scanf;
  //declare variables
  int fd;
  int i;
  string str,str2;
  int dummy;

  initial begin
    //file hihihi.sv open in write mode
    fd = $fopen ("hihihi.sv", "w");

    //displays the contents into the file.
    $fdisplay(fd,"bhavana");
    $fdisplay(fd,"Teams");
    $fdisplay(fd,"BJT");

    //close file
    $fclose(fd);

    //open the file in read mode
    fd = $fopen("hihihi.sv","r");

    //$fscanf reads the data from file
    dummy = $fscanf(fd,"str=%0s",str);
    repeat(2) begin
      //$fgets will read single line
      dummy = $fgets(str,fd);
      $display("");
      $display("contents of fscanf");
      $display("str = %0s",str);
    end

    //Usage of sscanf
    $display("contents of sscanf");

    //$fgets will read single line
    dummy = $fgets(str,fd);
    //$sscanf reads the data from given variable
    dummy =  $sscanf(str,"%0s",str2);
      
    //printing str and str2
    $display("str = %0s",str);
    $display("str2 = %0s",str2);
    $display("");
    //close file
    $fclose(fd);

  end

endmodule :scanf
