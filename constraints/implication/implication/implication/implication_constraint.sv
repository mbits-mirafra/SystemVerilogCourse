//The implication operator can be used to declaring conditional relations between two variables.
//implication operator is denoted by the symbol ->. 
//If the expression on the LHS of implication operator (->) is true,
//then the only constraint on the RHS will be considered.

//Syntax : constraint const_name {(variable1 -> variable2); }

//class declaration
class ABC;

  // random variable declared using rand keyword
  rand bit [2:0] value1;
  rand bit [3:0] value2;


  //constraint block
  //implication operator is used to mention condition between
  //two variables value1 and value2

  constraint c_mode { (value1 inside {[1:5]}) -> (value2 <8);}
endclass 

// module name is top
module top;
initial begin 
  int i;

    //Here, we need to declare handle
    //handle name is abc
    ABC abc;

    // memory allocation to the handle
   abc = new();

   $display("-----Output for implication constraint-----");
   $display("-------------------------------------------");
  for(int i = 0; i< 10 ; i++) begin
   void'(abc.randomize());
    $display("[%0t] @ iteration %0d -----> value1=%0d , value2=%0d" ,$time,i, abc.value1, abc.value2);
  end 
  $display("--------------------------------------------");
end
endmodule
