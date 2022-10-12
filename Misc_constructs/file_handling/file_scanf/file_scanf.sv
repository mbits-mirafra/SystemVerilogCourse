module scanf;
 
 int fd;
 int i;
 string str,str2;
 int dummy;
  initial begin

    fd = $fopen ("hihihi.sv", "w");

      $fdisplay(fd,"bhavana");
      $fdisplay(fd,"Teams");
      $fdisplay(fd,"BJT");

    $fclose(fd);

    fd = $fopen("hihihi.sv","r");

//Usage of fscanf
 dummy = $fscanf(fd,"str=%0s",str);
    repeat(2)
       begin
       dummy = $fgets(str,fd);
        $display("");
          $display("contents of fscanf");
          $display("str = %0s",str);
        end

//Usage of sscanf
    $display("contents of sscanf");

   dummy = $fgets(str,fd);
   dummy =  $sscanf(str,"%0s",str2);
      
      $display("str = %0s",str);
      $display("str2 = %0s",str2);
      $display("");
    $fclose(fd);

  end

endmodule
