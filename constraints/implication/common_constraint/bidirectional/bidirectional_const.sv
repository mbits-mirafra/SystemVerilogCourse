//bidirectional constraints are solved bidirectionally which means constraints
//on all variables will be solved parallel.


//class declaration
class items;

  // random variable declared by using rand keyword
 rand bit [3:0] value1;

  //constraint block
  constraint addr_mode1 { value1 > 5;

                         value1 <12;}

  constraint addr_mode2 {value1>6;}

endclass

// module name is constraint_top
module constraint_top;
initial begin

    int i;

  //Here,we need to create handle
  //handle name is item
  //
   items  item;

   //memory allocation to the handle 
  item = new();

  $display(" -----Output for bidirectional constraint-----");

  $display(" -----constraint 1 & 2 limits the value to 7,8,9,10 and 11-----");
  $display("----------------------------------------------------------------");
  for (int i =1;i<10;i++) begin
   void'(item.randomize());
    $display("[%0t] @ iteration %0d -----> value1 = %0d",$time, i, item.value1);
  
  end
  $display("----------------------------------------------------------------");
end
endmodule
