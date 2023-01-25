module file_handles;
int f;

 initial begin:BEGIN_I
 
  f=$fopen("file_handle","w");
  
   $fdisplay(f,"fileoperations");
   $fdisplay(f,"sv course");
  
 $fclose(f);

end:BEGIN_I

endmodule:file_handles

