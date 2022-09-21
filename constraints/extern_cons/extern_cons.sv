class class_a;
  rand byte a;
  rand byte x;
  constraint b{a<6;
               a>2;}

  extern constraint y; 
endclass 

constraint class_a:: y{x>7;}
module mod;
class_a pack;
initial begin 
  pack = new;
  for (int i =0;i<=5;i++)begin 
   void'(pack.randomize());
    $display ( "Iteration = %0d  Value of a = %0d Value of x = %0d  " , i,pack.a,pack.x);
    $display ("------------------------------------------------");
  end 
end 
endmodule
