//The  :/ operator specifies that the weight is to be
//equally divided between all the values

//The value which is more weight, occurence of
//that value in randomization is more

//Syntax -  value :/ weightage

// Value - Random value of the variable
// Weightage - weight for random variable i.e. occurrence of value can be specified.

//class declaration
class myWorld;

  //random variable declared using the rand keyword
  rand bit [3:0] value1;

  //constraint block
  //In this, the weight of 1 is 30, 6 is 40 and 7 is 20
  //while 2 through 5 shares a total weight of 60
  constraint m_var { value1 dist { 1:/30, [2:5]:/60, 6:/40, 7:/20};}

endclass

//module name is top
module top;
initial begin
    int i;

  //Here,we need to create handle
  //handle name is world
   myWorld world;

   //memory allocation to the handle
  world = new();

  $display("-----Output for :/ operator");
  $display(" The occurence of '6' is more as '6' has more weight");
  $display("--------------------------------");
  for(int i =0; i<10; i++) begin
    void'( world.randomize());
    $display("[%0t] @ iteration %0d -----> value1=%0d",$time,i,world.value1);
  end
   $display("-------------------------------");
end
endmodule

