class pack;
  randc bit [2:0]a;
endclass
module randc_var;

pack pk=new();
initial begin 

 
  $display (" randc - It  is cyclic in nature . It will repeat ");
  
  $display ("         it's value after completing one cycle .");
  
  
  for (int i =0; i<=12;i++)begin
 void'(pk.randomize ());
  $display("Iteration =  %0d    Random Value =  %0d ", i ,pk.a);

end 
$display ("---------------------------------------------------");
end 
endmodule 
