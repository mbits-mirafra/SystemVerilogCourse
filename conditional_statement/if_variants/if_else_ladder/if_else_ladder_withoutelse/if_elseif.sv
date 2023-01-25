module if_elseif;
int a,b,c;
initial begin 
 a = 10;
 b = 12;
 c = 13;
 $display ("Assign the value of a = %0d , b= %0d , c =%0d  " ,a,b,c);
 $display ("------------------------------------------------------");
 if (a>b)begin 
   $display ("Successfully enters into if block ");
   $display ("Value of a < b");
   $display ("----------------------------------");
 end 
 else if (b<c)begin 
   $display ("Successfully enters into else if block ");
   $display ("value of b<c");
   $display ("----------------------------------------------------");
   end
   else if (c<0) begin 
     $display ("Successfully enters into second elseif block ");
     $display ("c is a negative number ");
     $display ("--------------------------------------------");
   end 
   $display ("Out from ladder block");

 end 
 endmodule 
 
