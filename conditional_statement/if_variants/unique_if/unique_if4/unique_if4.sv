module unique_if4;
int  money ;
initial begin
  money = 900;
$display ("Money in account  = %0d",money);
$display ("------------------------");
unique if (money>1000)begin 
  $display ("Inside the unique if block ");
  $display ("can withdraw money  ");
end 
else if (money==0)begin 
  $display ("Inside the first else if block ");
  $display ("Account block .");
end 
else 
  $display ("Money withdrawal not allowed .");
  $display ("--------------------------------");
  $display ("Out of the conditional block ");

end 

endmodule 
