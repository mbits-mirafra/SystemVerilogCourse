// more than one condition are true - execute the set of  first true conditional expressions.  
//                          Doesn't display any warning .
module priorityif_2;
int a,b,c;
initial begin 
  a = 10;
  b =20;
  c = 30;
$display ( "The value of a =%0d  b = %0d  c = %0d ", a,b,c);
$display ("-----------------------------------------------");
priority if (a>b)begin //false 
  $display ("Inside the priority if block ");
  $display (" a <b");
end 
else if ( b <c )begin //true 
  $display ("Inside the first else if block");
  $display ("b<c");
end 
else if (a <c )begin //true
  $display ("Inside the second else if block ");
  $display ( "a < c ");
end 
$display ("Out from the conditional block ");

end 
endmodule 
