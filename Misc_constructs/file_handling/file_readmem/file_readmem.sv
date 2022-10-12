//-------------------------------------------------------
//$readmemb and $readmemh initialize a memory array with the
//values from the file.The file must be an ASCII file with
//values represented in binary($readmemb)or hexadecimal($readmemh)
//-------------------------------------------------------
module readmem;

int fd;
int i;
int mem[3];
string str;

  initial begin:BEGIN_I
  //open the file in write mode
   fd = $fopen ("hihihi.sv", "w");

    $fdisplay(fd,10000);
    $fdisplay(fd,11011);
    $fdisplay(fd,"c");

  //close the file in write mode
   $fclose(fd);

   $readmemh("hihihi.sv",mem);
   $readmemb("hihihi.sv",mem);
    repeat($size(mem))

      begin:BEGIN_II
     
       $display(""); 
       $display("hexadecimal[%0d] = %0h",i,mem[i]);
       $display("Binary[%0d] = %0b",i,mem[i]);
       $display("");
       i++;

      end:BEGIN_II

   end:BEGIN_I

endmodule:readmem
