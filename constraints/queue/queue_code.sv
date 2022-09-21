class class_1;
  rand bit [5:0]que[$];
  constraint que_const{que.size()==5;}
endclass
module mod;
class_1 pack =new();
initial begin 
 void'(pack.randomize());
  for (int i = 0;i<=pack.que.size();i++)begin
   $display ("Iteration =%0d The value of array  =%0p",i,pack.que[i]);
  
  end 
end 
endmodule 
