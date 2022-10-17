class class_1;
 randc bit [7:0] dyn_arr[];
 // declaring a dynamic array , each element is of 5 bits.

 
constraint dyn_arr_size{dyn_arr.size()>3;dyn_arr.size()<7;}
// declare the size of the dyn_arr between 3 to

//int i =4;
constraint dyn_arr_ele{foreach (dyn_arr[i])   // each element value is square of the index number.
                      dyn_arr[i]==i*i;}

endclass 

module mod;
class_1 pack;
initial begin
  pack = new();
//$display ($size(pack.dyn_arr);


 for (int i = 0;i<=2;i++)begin 
void'(pack.randomize());

  $display ("Iteration =%0p Array  =%0p",i,pack.dyn_arr);
end 
end 
endmodule 
