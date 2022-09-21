

// class declaration
class basic;

  //value1 & value2 are the variables
  //random variable are created by rand keyword
  rand bit [3:0] value1;
  rand bit [2:0] value2;


  constraint c_var {

    if(value1 inside {[4'h3:4'h9]})
      value2 == 1;

      else {
        value2 == 0;}

      }

    endclass

    //module name is top
    module top;

    int i=1;
    initial begin

      //here, we need to create handle
      //handle name is pkt
      basic pkt;

      // memory allocation to the handle
      pkt = new();
     
      $display("-----Output for if else constraint-----");
      $display("If the value1 lies between the 3 to 9, ");  
      $display(" then value2 will be 1 otherwise 0 ");
      $display("-----------------------------------------------");
      for (int i=0;i<5;i++)begin
        void'( pkt.randomize());
        $display("[%0t] @ iteration %0d ----->  value1=%0d, value2 = %0d",$time,i,pkt.value1,pkt.value2);

      end
      $display("-----------------------------------------------");
    end
    endmodule
