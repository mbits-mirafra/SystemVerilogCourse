//here none of the condition is true . The output will not show any warning .

module unique0_if;
int  age ; 
initial begin 
  age = 17;
  $display ("The age of the person = %0d ",age);
  $display ("----------------------------------");
unique0 if(age >18)begin // false  
    $display ("Inside the unique 0 if block ");
    $display ("Eligible for voting");
  end 
  else if(age>30) begin //false 
    $display ("Inside the first else if block ");
    $display ("Eligible as candidate for PM election in India ");
  end 
  else if(age ==10)begin // false 
    $display ("Inside the second else if block ");
    $display ("Wait for 8 years more. ");
end 
$display ("Out from the conditional block ");

end 
endmodule 


