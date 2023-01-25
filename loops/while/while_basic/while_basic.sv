//while loop - working 
module while_basic;
int apple=1; // Declare and assigning the value 
initial begin
$display ("-----while loop output----");
while(apple<6) //while loop initialization
begin 
$display ("\t Value of apple = %0d",apple);
apple++;
end 
end 
endmodule 
