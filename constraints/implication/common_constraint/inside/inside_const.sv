//In inside block, we write  inside keyword foillowed by curly braces {}
 //The values contain by the inside block is variable,value or range.
 

// Syntax: constraint const_name { (variable inside {[a:b]};}


 // class declaration
class PQR; 

  // random variable declared using the rand keyword
  rand bit [3:0] var1;

  //constraint block
  constraint C1 {(var1 inside {[3:9]});}

endclass
  
module top;
initial begin

int i;

  //Here, we need to create handle
  //handle name is pkt
  PQR pqr;

  //memory allocation to the handle
  pqr=new();
  $display("-------Output for  inside constraint-------");
  $display("-------------------------------------------");
  for(int i =1; i<7;i++)
  
  begin

    // The .randomize() function is used to randomize properties of an object of a class
    void'(pqr.randomize());
    $display("[%0t] @ iteration: %0d -----> var1=%0d",$time,i,pqr.var1);
  end
  $display("-------------------------------------------");
end
endmodule
