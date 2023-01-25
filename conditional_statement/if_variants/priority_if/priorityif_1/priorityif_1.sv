// priority if conditional statement is same as the if else statement when only one conditional expression is true . 

module priorityif_1;
int a; // data type declaration 
byte b;
int c;
initial begin 
 $display ("The default size of a = ",$bits(a));
 $display ("The default size of b = ",$bits(b));
 $display ("The default size of c = ",$bits(c));
 $display ("-----------------------------------");
 a = 10; //assign value 
 b= 12;  // assign value 
 c=13;   // assign value 
 priority if (a == $bits(a))begin 
   $display ("Inside the priority if block");
   $display ("Here , value assign to a = default size of a ");
 end 
 else if ($bits(a)== $bits(c))begin 
   $display ("Inside the first else if block ");
   $display ( " Default size of a = default size of c ");
 end 
 else if (a>b)begin 
   $display ("Inside the second else if block ");
   $display ("value of a is greater than b ");
 end 
 $display ("-----------------------------");
$display ("Out from the block ");
end 
endmodule 



