//-------------------------------------------------------
//$readmemb and $readmemh initialize a memory array with the
//values from the file.The file must be an ASCII file with
//values represented in binary($readmemb)or hexadecimal($readmemh)
//-------------------------------------------------------
module readmem;
  //declare variables
  int fd;
  int i;
  int mem[3];
  string str;

  initial begin: BEGIN_I
    //open the file in write mode
    fd = $fopen ("hihihi.sv", "w");

    //displays the contents into the file.
    $fdisplay(fd,10000);
    $fdisplay(fd,11011);
    $fdisplay(fd,"c");

    //close the file in write mode
    $fclose(fd);

    //$readmemh reads the hexadecimal data
    $readmemh("hihihi.sv",mem);
    //$readmemh reads the binary data
    $readmemb("hihihi.sv",mem);
    
    //repeating 3 time because size of mem 3
    repeat($size(mem)) begin: BEGIN_II
      $display(""); 
      //printing hexadecimal and binary values
      $display("hexadecimal[%0d] = %0h",i,mem[i]);
      $display("Binary[%0d] = %0b",i,mem[i]);
      $display("");
      //increment index
      i++;
    end:BEGIN_II
  end:BEGIN_I

endmodule:readmem
