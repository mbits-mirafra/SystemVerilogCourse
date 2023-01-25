class class1;
 rand  bit[3:0]a;
  constraint con1{a<10;}
constraint con2{a>10;}
endclass 

module mod;
class1 cl;
initial begin
  cl=new();
  if(cl.randomize())begin
    $display("\t \n Randomize successfully");
    $display("\t \n The randomise value of a = %0d",cl.a);
  end 
  else begin  
    $display("\t \n Randomization fail because conflict occurs");
   $display("\t \n The value of a=%0d",cl.a);
    $display("-----------------------");
  end 
end 
  endmodule 



