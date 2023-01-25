module ran_fun;
//bit [2:0] a;
integer a; // integer is a signed data type 
integer d;
logic [2:0] b;// LOGIC IS UNSIGNED DATA TYPE
bit [5:0] e;
byte c;  //BYTE IS AN UNSIGNED DATA TYPE 
initial begin 
  
  
a = $random();
b = $urandom();
c= $urandom_range(4,2); //GIVING RANGE (MAX,MIN)
d = $random(23); // assign some seed value 
e = $urandom(4); // assign seed value 
$display ("a=$random()      // Return 32 bit signed random variable");
$display("Random Value of a  =  %0d",a);
$display("-----------------------------------------------------------------------");

$display("b = $urandom()   // Return 32 bit unsigned random value .");
$display("Random Value of b = %0d",b);
$display("----------------------------------------------------------------------");

$display ("c = $random_range(4,2)   // Return the unsigned random number"); 
 $display("                          by giving the range to the variable");
$display("Random value of c = %0d",c);
$display("------------------------------------------------------------------------");

$display(" $random(seed);     // assign some seed value, it will display 32 bit ");
$display ("                         signed random value for the given seed value ");
$display ("d = $random(23);  // Seed value =23");
$display ("Random value of d = %0d",d );
$display ("---------------------------------------------------------------------------");

$display ("$urandom(seed);  // assign the seed value , it will display 32 bit ");
$display ("                    unsigned random value for the given seed value ");
$display ("e = $urandom(4);  // Seed value = 4;");
$display ("Random value of e = %0d", e);
$display ("-----------------------------------------------------------------------------");                                     
end 
                                     
endmodule 



