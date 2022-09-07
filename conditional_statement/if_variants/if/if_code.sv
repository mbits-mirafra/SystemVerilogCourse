module if_code;
bit [3:0]a;
initial begin 
    a=10;
    
   $display ("Value of a = %0d",a);
   
  $display ("--------------------------------------------------------------");
   if (a==10)begin 
      $display ("if expression is true , Successfully entered into the if block");
      $display ( "a is equal to 10 " );
      $display("---------------------------------------------------------------");
    end 
     $display("out of if block");
  end 
  endmodule 
  
