module if_elseif_else;
int a , b,c ;
initial begin 
 a = -12;
 b = 12;
 c = 10;
 $display ("Assign the value of a =%0d  b = %0d  c = %0d ", a,b,c);
 $display ("------------------------------------------------------");
 if (a>0) //false conditon 
 begin 
 $display ("Entered into if block ");
 $display ("a is a negative number");
 end 
 else if (a==0) begin  // false condition  
   $display ("Entered into first elseif block ");
   $display ("a is a negative number ");
 end 
   else if (b<c)begin // false condition
     $display ("Entered into second elseif block ");
     $display ("b is less than c ");
   end 
   else begin 
     $display ("None of the conditon is true in if-elseif blocks ");
     $display ("-------------------------------------------------");
   end 
   $display ("Out of the conditional block ");
 end 
 endmodule 



