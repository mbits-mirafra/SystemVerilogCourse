 //None of the condition is true  - After simulation , a warning will be displayed . 



module unique_if3;
bit [3:0] a;
initial begin 
  a =13;
  $display ("The value of a = %0d", a);
  $display ("------------------------");
  unique if (a%2 == 0)begin  // false 
    $display ("Inside the unique if block ");
    $display ("a is an even number");
  end 
  else if (a <2)begin // false 
  $display (" Inside the else if block ");
  $display ("a is smaller than 2 ");
end 
else if (a !=13) begin // False  
  $display ("Inside the sencond else if block ");
  $display ("a is not equal to 13 ");
end
$display ("Out of the condtional block ");

end 
endmodule 
