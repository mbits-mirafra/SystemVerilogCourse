module priorityif_4;
int bill;
initial begin
  bill = 6000; // assign the value
  $display ("Total bill = %0d",bill);
  $display ("------------------------");
  priority if (bill < 1000)begin // false
    $display ("Inside the priority if ");
    $display ("No discount");
  end
  else if (bill ==8000)begin //false
    $display ("Inside the first else if block ");
    $display ("10 percent  discount available ");
  end
  else if (bill >8000)begin // false
    $display ("Inside the second else if block ");
    $display ("15 percent discount available");
  end
  else begin 
    $display ("Inside the else block ");
    $display ("5 percent discount available ");
  end 
  $display ("Out from the conditional block");
  $display ("Do more shopping for more discount ......");

end
endmodule

