//module: test
module test(dff.tb intf);

  //task:drv
  task drv;
    //loop
    repeat(10)
    begin
    //test triggering at posedge
    @(posedge intf.clk )

      //randomzing the d
      intf.d <= $random;
      $display("test side[%0t] = d data is :%d and q data is :%d",$time,intf.d, intf.q);
    end
    $finish;
  endtask 
  //calling the task drv
  initial begin
    drv();
  end 
endmodule :test
