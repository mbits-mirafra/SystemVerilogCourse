module file_handles;
int f;

 initial begin
 
  f=$fopen("file_handle","w");
  
   $fdisplay(f,"fileoperations");
   $fdisplay(f,"sv course");
  
 $fclose(f);

end 

endmodule

